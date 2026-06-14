; =========================================================
; Game Engine Function: png_create_write_struct_2
; Address            : 0x204080 - 0x2040E2
; =========================================================

204080:  PUSH            {R4,R6,R7,LR}
204082:  ADD             R7, SP, #8
204084:  SUB             SP, SP, #0x10
204086:  ADD.W           LR, R7, #8
20408A:  LDM.W           LR, {R4,R12,LR}
20408E:  STMEA.W         SP, {R4,R12,LR}
204092:  BLX             j_png_create_png_struct
204096:  MOV             R4, R0
204098:  CBZ             R4, loc_2040DC
20409A:  ADR             R0, dword_2040F0
20409C:  ADD.W           R3, R4, #0x190
2040A0:  VLD1.64         {D16-D17}, [R0@128]
2040A4:  ADR             R0, dword_204100
2040A6:  MOVS            R1, #8
2040A8:  VLD1.64         {D18-D19}, [R0@128]
2040AC:  MOVS            R0, #0
2040AE:  LDR.W           R2, [R4,#0x138]
2040B2:  VST1.32         {D16-D17}, [R3]
2040B6:  ADD.W           R3, R4, #0x180
2040BA:  VST1.32         {D18-D19}, [R3]
2040BE:  MOVS            R3, #0xF
2040C0:  STRD.W          R3, R1, [R4,#0x1A0]
2040C4:  MOVS            R1, #0
2040C6:  STR.W           R0, [R4,#0x1A8]
2040CA:  ORR.W           R0, R2, #0x200000
2040CE:  STR.W           R0, [R4,#0x138]
2040D2:  MOV             R0, R4
2040D4:  MOVS            R2, #0
2040D6:  MOVS            R3, #0
2040D8:  BLX             j_png_set_write_fn
2040DC:  MOV             R0, R4
2040DE:  ADD             SP, SP, #0x10
2040E0:  POP             {R4,R6,R7,PC}
