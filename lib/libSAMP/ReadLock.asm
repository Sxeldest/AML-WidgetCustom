; =========================================================
; Game Engine Function: ReadLock
; Address            : 0x1C0DC8 - 0x1C0F20
; =========================================================

1C0DC8:  PUSH            {R4-R7,R11,LR}
1C0DCC:  ADD             R11, SP, #0x10
1C0DD0:  MOV             R4, R0
1C0DD4:  ADD             R5, R4, #0xC
1C0DD8:  MOV             R1, #1
1C0DDC:  DMB             ISH
1C0DE0:  LDREX           R0, [R5]
1C0DE4:  STREX           R2, R1, [R5]
1C0DE8:  CMP             R2, #0
1C0DEC:  BNE             loc_1C0DE0
1C0DF0:  CMP             R0, #1
1C0DF4:  DMB             ISH
1C0DF8:  BNE             loc_1C0E24
1C0DFC:  MOV             R6, #1
1C0E00:  BL              sched_yield
1C0E04:  DMB             ISH
1C0E08:  LDREX           R0, [R5]
1C0E0C:  STREX           R1, R6, [R5]
1C0E10:  CMP             R1, #0
1C0E14:  BNE             loc_1C0E08
1C0E18:  CMP             R0, #1
1C0E1C:  DMB             ISH
1C0E20:  BEQ             loc_1C0E00
1C0E24:  ADD             R6, R4, #8
1C0E28:  MOV             R1, #1
1C0E2C:  DMB             ISH
1C0E30:  LDREX           R0, [R6]
1C0E34:  STREX           R2, R1, [R6]
1C0E38:  CMP             R2, #0
1C0E3C:  BNE             loc_1C0E30
1C0E40:  CMP             R0, #1
1C0E44:  DMB             ISH
1C0E48:  BNE             loc_1C0E74
1C0E4C:  MOV             R7, #1
1C0E50:  BL              sched_yield
1C0E54:  DMB             ISH
1C0E58:  LDREX           R0, [R6]
1C0E5C:  STREX           R1, R7, [R6]
1C0E60:  CMP             R1, #0
1C0E64:  BNE             loc_1C0E58
1C0E68:  CMP             R0, #1
1C0E6C:  DMB             ISH
1C0E70:  BEQ             loc_1C0E50
1C0E74:  DMB             ISH
1C0E78:  LDREX           R0, [R4]
1C0E7C:  ADD             R1, R0, #1
1C0E80:  STREX           R2, R1, [R4]
1C0E84:  CMP             R2, #0
1C0E88:  BNE             loc_1C0E78
1C0E8C:  CMP             R0, #0
1C0E90:  DMB             ISH
1C0E94:  BNE             loc_1C0EE8
1C0E98:  ADD             R4, R4, #0x10
1C0E9C:  MOV             R1, #1
1C0EA0:  DMB             ISH
1C0EA4:  LDREX           R0, [R4]
1C0EA8:  STREX           R2, R1, [R4]
1C0EAC:  CMP             R2, #0
1C0EB0:  BNE             loc_1C0EA4
1C0EB4:  CMP             R0, #1
1C0EB8:  DMB             ISH
1C0EBC:  BNE             loc_1C0EE8
1C0EC0:  MOV             R7, #1
1C0EC4:  BL              sched_yield
1C0EC8:  DMB             ISH
1C0ECC:  LDREX           R0, [R4]
1C0ED0:  STREX           R1, R7, [R4]
1C0ED4:  CMP             R1, #0
1C0ED8:  BNE             loc_1C0ECC
1C0EDC:  CMP             R0, #1
1C0EE0:  DMB             ISH
1C0EE4:  BEQ             loc_1C0EC4
1C0EE8:  MOV             R0, #0
1C0EEC:  DMB             ISH
1C0EF0:  LDREX           R1, [R6]
1C0EF4:  STREX           R1, R0, [R6]
1C0EF8:  CMP             R1, #0
1C0EFC:  BNE             loc_1C0EF0
1C0F00:  DMB             ISH
1C0F04:  MOV             R0, #0
1C0F08:  LDREX           R1, [R5]
1C0F0C:  STREX           R1, R0, [R5]
1C0F10:  CMP             R1, #0
1C0F14:  BNE             loc_1C0F08
1C0F18:  DMB             ISH
1C0F1C:  POP             {R4-R7,R11,PC}
