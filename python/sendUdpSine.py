import socket, sys, time
from struct import pack
import numpy as np

import matplotlib.pyplot as plt


def send(ip, port, sock, values):
    print(values)
    args = ["100I"]
    for i in values:
        args.append(i)
    sock.sendto(pack(*args), (ip, port))


def main():

    port = 5432  # arbitrary port
    ip = "127.0.0.1"

    sample_rate = 10000
    freq = 100
    samples = sample_rate / freq
    period = 1 / freq

    x = np.arange(samples)
    values = (512 * (np.sin(2 * np.pi * freq * x / sample_rate) + 1)).astype(int)
    # plt.plot(x,values)
    # plt.grid()
    # plt.show()

    print("UDP target IP: {}".format(ip))
    print("UDP target port: {}".format(port))

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    time.sleep(1)

    while True:
        send(ip, port, sock, values)
        time.sleep(period * samples)


if __name__ == "__main__":
    main()
