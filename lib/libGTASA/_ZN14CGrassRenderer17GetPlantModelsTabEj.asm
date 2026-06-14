; =========================================================
; Game Engine Function: _ZN14CGrassRenderer17GetPlantModelsTabEj
; Address            : 0x2CD230 - 0x2CD246
; =========================================================

2CD230:  CMP             R0, #3
2CD232:  ITT HI
2CD234:  MOVHI           R0, #0
2CD236:  BXHI            LR
2CD238:  LDR             R1, =(dword_70BF84 - 0x2CD23E)
2CD23A:  ADD             R1, PC; dword_70BF84
2CD23C:  ADD.W           R0, R1, R0,LSL#2
2CD240:  LDR.W           R0, [R0,#0xB88]
2CD244:  BX              LR
