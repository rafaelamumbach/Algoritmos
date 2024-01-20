from tkinter import *
import os
from time import strftime
import tkinter as tk

hora_atual = 0
root = tk.Tk()
root.title('Relógio Binário')
root.geometry("600x320")
root.maxsize(800, 420)
root.minsize(800, 420)
root.configure(background="black")

def get_horas():
    hora_atual = strftime('%H:%M:%S')
    horas.config(text=hora_atual)
    horas_binarias.config(text=get_horasbinarias(hora_atual))
    horas.after(1000, get_horas)

def get_horasbinarias(hora):
    horas_bin = ""
    for char in hora:
        if char.isdigit():
            bin_str = format(int(char), '04b')
            horas_bin += bin_str + " "
        elif char == ':':
            horas_bin += ": "
    return horas_bin

tela = tk.Canvas(root, width=600, height=60, bg="black", bd=0, highlightthickness=0, relief='ridge')
tela.pack()

horas = Label(root, bg='black', fg='white', font=('System', 64, 'bold'))
horas.pack(pady=2)
horas_binarias = Label(root, bg='black', fg='white', font=('System', 34, 'bold'))
horas_binarias.pack(pady=2)

get_horas()
root.mainloop()