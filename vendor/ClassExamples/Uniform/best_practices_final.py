from time import sleep

print("This is my file to demonstrate best practices.")

def process_data(data):
    """ Process the data """
    print("Beginning data processing...")
    modified_data = data + " that has been modified"
    sleep(2)
    print("Data processing finished.")
    return modified_data
    
def main():
    print("Executing main function")
    data = "My data read from the Web"
    print(data)
    modified_data = process_data(data)
    print(modified_data)
    
if __name__ == "__main__":
    main() 
