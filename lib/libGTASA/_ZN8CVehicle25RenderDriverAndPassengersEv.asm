; =========================================================
; Game Engine Function: _ZN8CVehicle25RenderDriverAndPassengersEv
; Address            : 0x58DDD4 - 0x58DEA4
; =========================================================

58DDD4:  PUSH            {R4,R6,R7,LR}
58DDD6:  ADD             R7, SP, #8
58DDD8:  MOV             R4, R0
58DDDA:  LDR             R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x58DDE0)
58DDDC:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
58DDDE:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
58DDE0:  LDR             R0, [R0]; CMirrors::TypeOfMirror
58DDE2:  CMP             R0, #3
58DDE4:  BEQ             locret_58DEA2
58DDE6:  LDR.W           R0, [R4,#0x464]
58DDEA:  CBZ             R0, loc_58DDFA
58DDEC:  LDR.W           R1, [R0,#0x44C]
58DDF0:  CMP             R1, #0x32 ; '2'
58DDF2:  BNE             loc_58DDFA
58DDF4:  LDR             R1, [R0]
58DDF6:  LDR             R1, [R1,#0x4C]
58DDF8:  BLX             R1
58DDFA:  LDR.W           R0, [R4,#0x468]
58DDFE:  CBZ             R0, loc_58DE0E
58DE00:  LDR.W           R1, [R0,#0x44C]
58DE04:  CMP             R1, #0x32 ; '2'
58DE06:  BNE             loc_58DE0E
58DE08:  LDR             R1, [R0]
58DE0A:  LDR             R1, [R1,#0x4C]
58DE0C:  BLX             R1
58DE0E:  LDR.W           R0, [R4,#0x46C]
58DE12:  CBZ             R0, loc_58DE22
58DE14:  LDR.W           R1, [R0,#0x44C]
58DE18:  CMP             R1, #0x32 ; '2'
58DE1A:  BNE             loc_58DE22
58DE1C:  LDR             R1, [R0]
58DE1E:  LDR             R1, [R1,#0x4C]
58DE20:  BLX             R1
58DE22:  LDR.W           R0, [R4,#0x470]
58DE26:  CBZ             R0, loc_58DE36
58DE28:  LDR.W           R1, [R0,#0x44C]
58DE2C:  CMP             R1, #0x32 ; '2'
58DE2E:  BNE             loc_58DE36
58DE30:  LDR             R1, [R0]
58DE32:  LDR             R1, [R1,#0x4C]
58DE34:  BLX             R1
58DE36:  LDR.W           R0, [R4,#0x474]
58DE3A:  CBZ             R0, loc_58DE4A
58DE3C:  LDR.W           R1, [R0,#0x44C]
58DE40:  CMP             R1, #0x32 ; '2'
58DE42:  BNE             loc_58DE4A
58DE44:  LDR             R1, [R0]
58DE46:  LDR             R1, [R1,#0x4C]
58DE48:  BLX             R1
58DE4A:  LDR.W           R0, [R4,#0x478]
58DE4E:  CBZ             R0, loc_58DE5E
58DE50:  LDR.W           R1, [R0,#0x44C]
58DE54:  CMP             R1, #0x32 ; '2'
58DE56:  BNE             loc_58DE5E
58DE58:  LDR             R1, [R0]
58DE5A:  LDR             R1, [R1,#0x4C]
58DE5C:  BLX             R1
58DE5E:  LDR.W           R0, [R4,#0x47C]
58DE62:  CBZ             R0, loc_58DE72
58DE64:  LDR.W           R1, [R0,#0x44C]
58DE68:  CMP             R1, #0x32 ; '2'
58DE6A:  BNE             loc_58DE72
58DE6C:  LDR             R1, [R0]
58DE6E:  LDR             R1, [R1,#0x4C]
58DE70:  BLX             R1
58DE72:  LDR.W           R0, [R4,#0x480]
58DE76:  CBZ             R0, loc_58DE86
58DE78:  LDR.W           R1, [R0,#0x44C]
58DE7C:  CMP             R1, #0x32 ; '2'
58DE7E:  BNE             loc_58DE86
58DE80:  LDR             R1, [R0]
58DE82:  LDR             R1, [R1,#0x4C]
58DE84:  BLX             R1
58DE86:  LDR.W           R0, [R4,#0x484]
58DE8A:  CMP             R0, #0
58DE8C:  IT EQ
58DE8E:  POPEQ           {R4,R6,R7,PC}
58DE90:  LDR.W           R1, [R0,#0x44C]
58DE94:  CMP             R1, #0x32 ; '2'
58DE96:  BNE             locret_58DEA2
58DE98:  LDR             R1, [R0]
58DE9A:  LDR             R1, [R1,#0x4C]
58DE9C:  POP.W           {R4,R6,R7,LR}
58DEA0:  BX              R1
58DEA2:  POP             {R4,R6,R7,PC}
