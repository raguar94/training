"""This code contains the solution of the problem Clok Hands de codeabbey"""
import math


def min2deg(MINUTOS):
    DEG = MINUTOS*90.0/15
    return DEG


def hour2deg(HORAS, MINUTOS):
    if HORAS >= 12:
        HORAS -= 12
    DEGH = HORAS*90.0/3
    DEGM = MINUTOS*30.0/60
    DEGT = DEGM + DEGH
    return DEGT


def cord(ANGLE, LENGTH):
    CX = 10 + LENGTH*math.sin(math.radians(ANGLE))
    CY = 10 + LENGTH*math.cos(math.radians(ANGLE))
    print str(CX) + " " + str(CY) + " "


X = int(raw_input())
TIME = raw_input().split()
for i in range(X):
    HORAS = int(TIME[i][0] + TIME[i][1])
    MINUTOS = int(TIME[i][3] + TIME[i][4])
    ANGM = min2deg(MINUTOS)
    ANGH = hour2deg(HORAS, MINUTOS)
    cord(ANGH, 6)
    cord(ANGM, 9)
