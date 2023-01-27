#![allow(dead_code)]
#![allow(unused_variables)]
#![allow(non_snake_case)]

use plotters::prelude::*;
use rand_pcg::Pcg32;
use rand::{distributions::Uniform, SeedableRng};
use rand_distr::{Distribution};
use std::time::Instant;

const ITERATIONS: usize = 100000;
const POINTSCALE: f64 = 2f64;
const DIMENSIONS: (u32, u32) = (1024, 1024);
const OUT_FILE_NAME: &'static str = "calculating_pi.png";

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let before = Instant::now();

    let point: Vec<(f64, f64)> = {
        let between = Uniform::from(-1f64..1f64);
        let x_iter = between.sample_iter(Pcg32::seed_from_u64(42));
        let y_iter = between.sample_iter(Pcg32::seed_from_u64(43));
        x_iter.zip(y_iter).take(ITERATIONS).collect()
    };

    let radius: Vec<f64> = { 
        point
            .iter()
            .map(|(x,y)| f64::sqrt(f64::powi(*x, 2) + f64::powi(*y, 2)))
            .rev()
            .collect()
    };

    let oob: Vec<bool> = {
        radius 
            .iter()
            .map(|r| r>&1f64)
            .rev()
            .collect()
    };

    let inside = oob
        .iter()
        .filter(|x| x != &&true)
        .count();

    let pi = 4f32-(inside as f32 / ITERATIONS as f32);
    println!("Elapsed time (calculation): {:.2?}", before.elapsed());
    println!(" Pi is approximately equal to: {}", pi);
    println!(" There were [{}] points inside the circle.", inside);

    // standard deviation
    let mut sum: f64 = 0f64;
    for i in 0..point.len()  {
        sum += point[i].0;
    }  
    let mean = sum / point.len() as f64;
    println!(" Standard Deviation (one axis): {:?}", f64::sqrt(f64::abs(mean-f64::powi(mean, 2))));

    // plotting
    println!("\nCompiling plot ...");
    let root = BitMapBackend::new(OUT_FILE_NAME, DIMENSIONS).into_drawing_area();
    root.fill(&WHITE)?;

    let mut scatter_ctx = ChartBuilder::on(&root)
        .x_label_area_size(40)
        .y_label_area_size(40)
        .build_cartesian_2d(-1f64..1f64, -1f64..1f64)?;
    scatter_ctx
        .configure_mesh()
        .draw()?;
    scatter_ctx.draw_series(
        point
            .iter()
            .map(|(x,y)| 

            match f64::sqrt(f64::powi(*x, 2) + f64::powi(*y, 2)) > 1f64 {
                true => Circle::new(
                    (*x,*y), 
                    4f64,
                    // (1f64-f64::log2(f64::sqrt(f64::powi(*x, 2) + f64::powi(*y, 2))) ) + POINTSCALE, 
                    RED ),
                    
                false => Circle::new(
                    (*x,*y), 
                    4f64,
                    // (1f64-f64::log2(f64::sqrt(f64::powi(*x, 2) + f64::powi(*y, 2))) ) + POINTSCALE, 
                    GREEN.filled() ),
            }),
    )?;

    scatter_ctx.draw_series(
        [(0f64,0f64); 1] 
        .iter()
        .map(|point| Circle::new(*point, 0.478*DIMENSIONS.1 as f32, BLACK)),
    )?;

    println!("Done!\nElapsed time (total): {:.2?}", before.elapsed());

    // println!("{:?}", point);
    Ok(())
}