; =========================================================
; Game Engine Function: _ZN6CCheat14FindCheatIndexEPKc
; Address            : 0x2FEA84 - 0x2FEAB6
; =========================================================

2FEA84:  PUSH            {R4-R7,LR}
2FEA86:  ADD             R7, SP, #0xC
2FEA88:  PUSH.W          {R11}
2FEA8C:  MOV             R5, R0
2FEA8E:  LDR             R0, =(_ZN6CCheat10CheatLabelE_ptr - 0x2FEA96)
2FEA90:  MOVS            R4, #0
2FEA92:  ADD             R0, PC; _ZN6CCheat10CheatLabelE_ptr
2FEA94:  LDR             R6, [R0]; CCheat::CheatLabel ...
2FEA96:  LDR.W           R1, [R6,R4,LSL#2]; char *
2FEA9A:  MOV             R0, R5; char *
2FEA9C:  BLX             strcmp
2FEAA0:  CBZ             R0, loc_2FEAAE
2FEAA2:  ADDS            R0, R4, #1
2FEAA4:  CMP             R4, #0x6E ; 'n'
2FEAA6:  MOV             R4, R0
2FEAA8:  BLT             loc_2FEA96
2FEAAA:  MOV.W           R4, #0xFFFFFFFF
2FEAAE:  MOV             R0, R4
2FEAB0:  POP.W           {R11}
2FEAB4:  POP             {R4-R7,PC}
