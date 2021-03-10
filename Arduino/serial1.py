import serial
import time
import serial.tools.list_ports

ports = list(serial.tools.list_ports.comports())
port = str(ports[0]).split()
print(port[0])

#arduino = serial.Serial(port='COM4', baudrate=9600, timeout=.1)
arduino = serial.Serial(port=port[0], baudrate=9600, timeout=.1)

def write_read(x):
    arduino.write(bytes(x, 'utf-8'))
    time.sleep(0.05)
    data = arduino.readline()
    return data


while True:
    num = input("Enter the number: ")
    value = write_read(num)
    print(value)
