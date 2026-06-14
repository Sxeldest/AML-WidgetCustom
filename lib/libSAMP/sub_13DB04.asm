; =========================================================
; Game Engine Function: sub_13DB04
; Address            : 0x13DB04 - 0x13DB3C
; =========================================================

13DB04:  PUSH            {R4,R5,R7,LR}
13DB06:  ADD             R7, SP, #8
13DB08:  MOV             R5, R0
13DB0A:  LDRB.W          R0, [R0,#0x58]
13DB0E:  CBZ             R0, loc_13DB36
13DB10:  LDR             R0, [R5,#8]; lpsrc
13DB12:  CBZ             R0, loc_13DB36
13DB14:  LDR             R1, =(off_234BA8 - 0x13DB20)
13DB16:  MOVS            R3, #0; s2d
13DB18:  LDR             R2, =(_ZTIN7ListBox5PanelE - 0x13DB22); `typeinfo for'ListBox::Panel ...
13DB1A:  MOVS            R4, #0
13DB1C:  ADD             R1, PC; off_234BA8
13DB1E:  ADD             R2, PC; lpdtype
13DB20:  LDR             R1, [R1]; lpstype
13DB22:  BLX             j___dynamic_cast
13DB26:  CBZ             R0, loc_13DB38
13DB28:  LDR             R1, [R5,#0x54]
13DB2A:  LDR             R0, [R0,#0x5C]
13DB2C:  SUBS            R0, R0, R1
13DB2E:  CLZ.W           R0, R0
13DB32:  LSRS            R4, R0, #5
13DB34:  B               loc_13DB38
13DB36:  MOVS            R4, #0
13DB38:  MOV             R0, R4
13DB3A:  POP             {R4,R5,R7,PC}
