; =========================================================
; Game Engine Function: mpg123_open_feed
; Address            : 0x22FBC0 - 0x22FCE8
; =========================================================

22FBC0:  PUSH            {R4-R7,LR}
22FBC2:  ADD             R7, SP, #0xC
22FBC4:  PUSH.W          {R11}
22FBC8:  MOV             R4, R0
22FBCA:  CMP             R4, #0
22FBCC:  BEQ             loc_22FC96
22FBCE:  MOVW            R1, #0xB2E0
22FBD2:  ADDS            R5, R4, R1
22FBD4:  LDR             R0, [R4,R1]
22FBD6:  CBZ             R0, loc_22FBE2
22FBD8:  LDR             R1, [R0,#4]
22FBDA:  CMP             R1, #0
22FBDC:  ITT NE
22FBDE:  MOVNE           R0, R4
22FBE0:  BLXNE           R1
22FBE2:  MOVS            R6, #0
22FBE4:  STR             R6, [R5]
22FBE6:  LDR             R0, [R4,#4]
22FBE8:  CBZ             R0, loc_22FBFE
22FBEA:  MOVW            R0, #0xB2B8
22FBEE:  STR             R6, [R4,R0]
22FBF0:  MOVW            R0, #0xB2BC
22FBF4:  STR             R6, [R4,R0]
22FBF6:  MOVW            R0, #0xB2B0
22FBFA:  STR             R6, [R4,R0]
22FBFC:  STR             R6, [R4,#4]
22FBFE:  MOVW            R0, #0xB290
22FC02:  MOVW            R1, #0xB288
22FC06:  STR             R6, [R4,R0]
22FC08:  MOVW            R0, #0xB2A8
22FC0C:  MOVW            R2, #0xB28C
22FC10:  STR             R6, [R4,R0]
22FC12:  MOVW            R0, #0xA308
22FC16:  ADD             R0, R4
22FC18:  STR             R0, [R4,R1]
22FC1A:  MOVW            R1, #0x4834
22FC1E:  LDR             R1, [R4,R1]
22FC20:  STR             R0, [R4,R2]
22FC22:  MOVW            R0, #0x4830
22FC26:  LDR             R0, [R4,R0]
22FC28:  MOVW            R2, #0x9384
22FC2C:  STR             R6, [R4,R2]
22FC2E:  BLX             j___aeabi_memclr8_1
22FC32:  MOVW            R0, #0x9388
22FC36:  MOV.W           R1, #0x1F00
22FC3A:  ADD             R0, R4
22FC3C:  BLX             j___aeabi_memclr8
22FC40:  MOVW            R0, #0x4A70
22FC44:  VMOV.I32        Q8, #0
22FC48:  STRH            R6, [R4,R0]
22FC4A:  MOVW            R0, #0x4A60
22FC4E:  ADD             R0, R4
22FC50:  MOVW            R1, #0x4808
22FC54:  VST1.64         {D16-D17}, [R0]
22FC58:  MOVW            R0, #0x4A50
22FC5C:  ADD             R0, R4
22FC5E:  VST1.64         {D16-D17}, [R0]
22FC62:  ADD.W           R0, R4, #8
22FC66:  BLX             j___aeabi_memclr8
22FC6A:  MOV             R0, R4
22FC6C:  BL              sub_225790
22FC70:  MOVW            R1, #0x9324
22FC74:  LDR             R0, [R4,R1]; p
22FC76:  CBZ             R0, loc_22FC82
22FC78:  ADDS            R6, R4, R1
22FC7A:  BLX             free
22FC7E:  MOVS            R0, #0
22FC80:  STR             R0, [R6]
22FC82:  MOVW            R0, #0xB448
22FC86:  LDR             R0, [R4,R0]
22FC88:  CMP             R0, #1
22FC8A:  BLT             loc_22FCA0
22FC8C:  MOVW            R0, #0xB33C
22FC90:  LDRB            R0, [R4,R0]
22FC92:  LSLS            R0, R0, #0x1A
22FC94:  BPL             loc_22FCD2
22FC96:  MOV.W           R0, #0xFFFFFFFF
22FC9A:  POP.W           {R11}
22FC9E:  POP             {R4-R7,PC}
22FCA0:  MOVW            R1, #0xB530
22FCA4:  ADDS            R6, R4, R1
22FCA6:  LDR             R0, [R4,R1]; p
22FCA8:  CMP             R0, #0
22FCAA:  IT NE
22FCAC:  BLXNE           free
22FCB0:  LDR             R0, =(off_685330 - 0x22FCBA)
22FCB2:  MOVS            R1, #0
22FCB4:  STR             R1, [R6]
22FCB6:  ADD             R0, PC; off_685330
22FCB8:  ADD.W           R2, R0, #0x60 ; '`'
22FCBC:  STR             R2, [R5]
22FCBE:  MOVW            R2, #0xB2F4
22FCC2:  STR             R1, [R4,R2]
22FCC4:  LDR             R1, [R0,#(off_685390 - 0x685330)]; sub_23C28C
22FCC6:  MOV             R0, R4
22FCC8:  BLX             R1; sub_23C28C
22FCCA:  ASRS            R0, R0, #0x1F
22FCCC:  POP.W           {R11}
22FCD0:  POP             {R4-R7,PC}
22FCD2:  LDR             R0, =(off_677664 - 0x22FCDE)
22FCD4:  MOV.W           R2, #0x3FC
22FCD8:  LDR             R1, =(aCProjectsOswra_35 - 0x22FCE0); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22FCDA:  ADD             R0, PC; off_677664
22FCDC:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22FCDE:  LDR             R0, [R0]
22FCE0:  LDR             R0, [R0]; stream
22FCE2:  BLX             fprintf
22FCE6:  B               loc_22FC96
