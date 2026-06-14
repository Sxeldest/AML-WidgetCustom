; =========================================================
; Game Engine Function: sub_2659AC
; Address            : 0x2659AC - 0x2659CE
; =========================================================

2659AC:  PUSH            {R7,LR}
2659AE:  MOV             R7, SP
2659B0:  MOV             R3, R0; arg
2659B2:  MOV             R0, #0x161B0
2659BA:  LDR             R2, =(sub_2659F4+1 - 0x2659C4)
2659BC:  LDR             R0, [R3,R0]; newthread
2659BE:  MOVS            R1, #1
2659C0:  ADD             R2, PC; sub_2659F4 ; start_routine
2659C2:  STR             R1, [R0,#4]
2659C4:  MOVS            R1, #0; attr
2659C6:  BLX             pthread_create
2659CA:  MOVS            R0, #1
2659CC:  POP             {R7,PC}
