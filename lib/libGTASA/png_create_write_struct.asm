; =========================================================
; Game Engine Function: png_create_write_struct
; Address            : 0x204000 - 0x20405C
; =========================================================

204000:  PUSH            {R4,R5,R7,LR}
204002:  ADD             R7, SP, #8
204004:  SUB             SP, SP, #0x10
204006:  MOVS            R5, #0
204008:  STRD.W          R5, R5, [SP,#0x18+var_18]
20400C:  STR             R5, [SP,#0x18+var_10]
20400E:  BLX             j_png_create_png_struct
204012:  MOV             R4, R0
204014:  CBZ             R4, loc_204056
204016:  ADR             R0, dword_204060
204018:  ADD.W           R2, R4, #0x190
20401C:  VLD1.64         {D16-D17}, [R0@128]
204020:  ADR             R0, dword_204070
204022:  MOVS            R3, #0
204024:  VLD1.64         {D18-D19}, [R0@128]
204028:  MOVS            R0, #8
20402A:  LDR.W           R1, [R4,#0x138]
20402E:  VST1.32         {D16-D17}, [R2]
204032:  ADD.W           R2, R4, #0x180
204036:  VST1.32         {D18-D19}, [R2]
20403A:  MOVS            R2, #0xF
20403C:  STRD.W          R2, R0, [R4,#0x1A0]
204040:  ORR.W           R0, R1, #0x200000
204044:  STR.W           R5, [R4,#0x1A8]
204048:  MOVS            R1, #0
20404A:  STR.W           R0, [R4,#0x138]
20404E:  MOV             R0, R4
204050:  MOVS            R2, #0
204052:  BLX             j_png_set_write_fn
204056:  MOV             R0, R4
204058:  ADD             SP, SP, #0x10
20405A:  POP             {R4,R5,R7,PC}
