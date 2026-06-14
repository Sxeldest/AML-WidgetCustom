; =========================================================
; Game Engine Function: _ZN11CAudioZones15SwitchAudioZoneEPcb
; Address            : 0x3BDDCC - 0x3BDE4A
; =========================================================

3BDDCC:  PUSH            {R4-R7,LR}
3BDDCE:  ADD             R7, SP, #0xC
3BDDD0:  PUSH.W          {R8,R9,R11}
3BDDD4:  MOV             R5, R0
3BDDD6:  LDR             R0, =(_ZN11CAudioZones12m_NumSpheresE_ptr - 0x3BDDDE)
3BDDD8:  MOV             R8, R1
3BDDDA:  ADD             R0, PC; _ZN11CAudioZones12m_NumSpheresE_ptr
3BDDDC:  LDR             R0, [R0]; CAudioZones::m_NumSpheres ...
3BDDDE:  LDR.W           R9, [R0]; CAudioZones::m_NumSpheres
3BDDE2:  CMP.W           R9, #1
3BDDE6:  BLT             loc_3BDE0E
3BDDE8:  LDR             R0, =(_ZN11CAudioZones10m_aSpheresE_ptr - 0x3BDDF0)
3BDDEA:  MOVS            R4, #0
3BDDEC:  ADD             R0, PC; _ZN11CAudioZones10m_aSpheresE_ptr
3BDDEE:  LDR             R6, [R0]; CAudioZones::m_aSpheres ...
3BDDF0:  MOV             R0, R5; char *
3BDDF2:  MOV             R1, R6; char *
3BDDF4:  BLX             strcasecmp
3BDDF8:  CBNZ            R0, loc_3BDE06
3BDDFA:  LDRB            R0, [R6,#0xA]
3BDDFC:  AND.W           R0, R0, #0xFE
3BDE00:  ORR.W           R0, R0, R8
3BDE04:  STRB            R0, [R6,#0xA]
3BDE06:  ADDS            R4, #1
3BDE08:  ADDS            R6, #0x1C
3BDE0A:  CMP             R4, R9
3BDE0C:  BLT             loc_3BDDF0
3BDE0E:  LDR             R0, =(_ZN11CAudioZones10m_NumBoxesE_ptr - 0x3BDE14)
3BDE10:  ADD             R0, PC; _ZN11CAudioZones10m_NumBoxesE_ptr
3BDE12:  LDR             R0, [R0]; CAudioZones::m_NumBoxes ...
3BDE14:  LDR.W           R9, [R0]; CAudioZones::m_NumBoxes
3BDE18:  CMP.W           R9, #1
3BDE1C:  BLT             loc_3BDE44
3BDE1E:  LDR             R0, =(_ZN11CAudioZones8m_aBoxesE_ptr - 0x3BDE26)
3BDE20:  MOVS            R4, #0
3BDE22:  ADD             R0, PC; _ZN11CAudioZones8m_aBoxesE_ptr
3BDE24:  LDR             R6, [R0]; CAudioZones::m_aBoxes ...
3BDE26:  MOV             R0, R5; char *
3BDE28:  MOV             R1, R6; char *
3BDE2A:  BLX             strcasecmp
3BDE2E:  CBNZ            R0, loc_3BDE3C
3BDE30:  LDRB            R0, [R6,#0xA]
3BDE32:  AND.W           R0, R0, #0xFE
3BDE36:  ORR.W           R0, R0, R8
3BDE3A:  STRB            R0, [R6,#0xA]
3BDE3C:  ADDS            R4, #1
3BDE3E:  ADDS            R6, #0x18
3BDE40:  CMP             R4, R9
3BDE42:  BLT             loc_3BDE26
3BDE44:  POP.W           {R8,R9,R11}
3BDE48:  POP             {R4-R7,PC}
