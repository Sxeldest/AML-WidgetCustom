; =========================================================
; Game Engine Function: _Z13RtSlerpCreatei
; Address            : 0x211690 - 0x2116EE
; =========================================================

211690:  PUSH            {R4,R5,R7,LR}
211692:  ADD             R7, SP, #8
211694:  SUB             SP, SP, #8
211696:  MOV             R5, R0
211698:  LDR             R0, =(RwEngineInstance_ptr - 0x21169E)
21169A:  ADD             R0, PC; RwEngineInstance_ptr
21169C:  LDR             R0, [R0]; RwEngineInstance
21169E:  LDR             R0, [R0]
2116A0:  LDR.W           R1, [R0,#0x12C]
2116A4:  MOVS            R0, #0x20 ; ' '
2116A6:  BLX             R1
2116A8:  MOV             R4, R0
2116AA:  CBZ             R4, loc_2116BC
2116AC:  TST.W           R5, #1
2116B0:  STR             R5, [R4]
2116B2:  BNE             loc_2116D6
2116B4:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
2116B8:  LDR             R5, [R4]
2116BA:  B               loc_2116D8
2116BC:  MOVS            R0, #0x13
2116BE:  MOVS            R4, #0
2116C0:  MOVT            R0, #0x8000; int
2116C4:  MOVS            R1, #0x20 ; ' '
2116C6:  STR             R4, [SP,#0x10+var_10]
2116C8:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2116CC:  STR             R0, [SP,#0x10+var_C]
2116CE:  MOV             R0, SP
2116D0:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2116D4:  B               loc_2116E8
2116D6:  MOVS            R0, #0
2116D8:  STR             R0, [R4,#4]
2116DA:  LSLS            R0, R5, #0x1E
2116DC:  BMI             loc_2116E4
2116DE:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
2116E2:  B               loc_2116E6
2116E4:  MOVS            R0, #0
2116E6:  STR             R0, [R4,#8]
2116E8:  MOV             R0, R4
2116EA:  ADD             SP, SP, #8
2116EC:  POP             {R4,R5,R7,PC}
