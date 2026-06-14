; =========================================================
; Game Engine Function: sub_1A434C
; Address            : 0x1A434C - 0x1A4360
; =========================================================

1A434C:  PUSH            {R7,LR}
1A434E:  MOV             R7, SP
1A4350:  MOV.W           R0, #0x90000; byte_count
1A4354:  BLX             malloc
1A4358:  LDR             R1, =(dword_94EAE8 - 0x1A435E)
1A435A:  ADD             R1, PC; dword_94EAE8
1A435C:  STR             R0, [R1]
1A435E:  POP             {R7,PC}
