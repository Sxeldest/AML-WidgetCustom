; =========================================================
; Game Engine Function: sub_109A0C
; Address            : 0x109A0C - 0x109AA4
; =========================================================

109A0C:  PUSH            {R4,R5,R7,LR}
109A0E:  ADD             R7, SP, #8
109A10:  SUB             SP, SP, #8
109A12:  MOV             R5, R0
109A14:  LDR             R0, [R0,#0xC]
109A16:  CMP             R0, #0
109A18:  BEQ             loc_109A9E
109A1A:  LDR             R0, [R5,#8]
109A1C:  BL              sub_108354
109A20:  MOV             R4, R0
109A22:  LDR             R0, [R5,#0xC]
109A24:  CMP             R0, R4
109A26:  BEQ             loc_109A3E
109A28:  LDR             R1, =(aAxl - 0x109A32); "AXL" ...
109A2A:  LDR             R2, =(aSInvalidMPvehi - 0x109A34); "%s: Invalid m_pVehicle or m_dwGTAId %08"... ...
109A2C:  LDR             R3, =(aBoolCvehicleIs - 0x109A3A); "bool CVehicle::IsRCVehicle()" ...
109A2E:  ADD             R1, PC; "AXL"
109A30:  ADD             R2, PC; "%s: Invalid m_pVehicle or m_dwGTAId %08"...
109A32:  STRD.W          R0, R4, [SP,#0x10+var_10]
109A36:  ADD             R3, PC; "bool CVehicle::IsRCVehicle()"
109A38:  MOVS            R0, #6; prio
109A3A:  BLX             __android_log_print
109A3E:  CBZ             R4, loc_109A9E
109A40:  LDRH            R1, [R4,#0x26]
109A42:  MOVS            R3, #0
109A44:  LDR             R0, =(unk_B3CA4 - 0x109A4C)
109A46:  MOVS            R2, #1
109A48:  ADD             R0, PC; unk_B3CA4
109A4A:  ADD.W           R3, R0, R3,LSL#2
109A4E:  LDRH            R3, [R3,#2]
109A50:  CMP             R3, R1
109A52:  BEQ             loc_109A84
109A54:  LSLS            R2, R2, #0x1F
109A56:  MOV.W           R3, #1
109A5A:  MOV.W           R2, #0
109A5E:  BNE             loc_109A4A
109A60:  MOVS            R0, #1
109A62:  CMP.W           R1, #0x1F4
109A66:  BGT             loc_109A88
109A68:  SUBW            R1, R1, #0x1B9
109A6C:  CMP             R1, #0x18
109A6E:  BHI             loc_109A9E
109A70:  MOVS            R2, #1
109A72:  LSL.W           R1, R2, R1
109A76:  MOVS            R2, #0x1800001
109A7C:  TST             R1, R2
109A7E:  IT EQ
109A80:  MOVEQ           R0, #0
109A82:  B               loc_109AA0
109A84:  MOVS            R0, #1
109A86:  B               loc_109AA0
109A88:  MOVW            R2, #0x1F5
109A8C:  CMP             R1, R2
109A8E:  BEQ             loc_109AA0
109A90:  CMP.W           R1, #0x234
109A94:  ITT NE
109A96:  MOVWNE          R2, #0x252
109A9A:  CMPNE           R1, R2
109A9C:  BEQ             loc_109AA0
109A9E:  MOVS            R0, #0
109AA0:  ADD             SP, SP, #8
109AA2:  POP             {R4,R5,R7,PC}
