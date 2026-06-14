; =========================================================
; Game Engine Function: _ZNK20CPedAttractorManager20GetRelevantAttractorEPK4CPedPK9C2dEffectPK7CEntityRK6SArrayIP13CPedAttractorE
; Address            : 0x4ABFA2 - 0x4AC01A
; =========================================================

4ABFA2:  PUSH            {R4-R7,LR}
4ABFA4:  ADD             R7, SP, #0xC
4ABFA6:  PUSH.W          {R8,R9,R11}
4ABFAA:  LDR             R0, [R7,#arg_0]
4ABFAC:  LDR.W           R12, [R0,#4]
4ABFB0:  CMP.W           R12, #1
4ABFB4:  BLT             loc_4AC012
4ABFB6:  LDR.W           LR, [R0,#8]
4ABFBA:  MOVS            R4, #0
4ABFBC:  B               loc_4ABFFC
4ABFBE:  LDR.W           R8, [R0,#0x10]
4ABFC2:  CMP.W           R8, #1
4ABFC6:  BLT             loc_4ABFDC
4ABFC8:  LDR.W           R9, [R0,#0x14]
4ABFCC:  MOVS            R5, #0
4ABFCE:  LDR.W           R6, [R9,R5,LSL#2]
4ABFD2:  CMP             R6, R1
4ABFD4:  BEQ             loc_4AC014
4ABFD6:  ADDS            R5, #1
4ABFD8:  CMP             R5, R8
4ABFDA:  BLT             loc_4ABFCE
4ABFDC:  LDR.W           R8, [R0,#0x1C]
4ABFE0:  CMP.W           R8, #1
4ABFE4:  BLT             loc_4AC00C
4ABFE6:  LDR.W           R9, [R0,#0x20]
4ABFEA:  MOVS            R5, #0
4ABFEC:  LDR.W           R6, [R9,R5,LSL#2]
4ABFF0:  CMP             R6, R1
4ABFF2:  BEQ             loc_4AC014
4ABFF4:  ADDS            R5, #1
4ABFF6:  CMP             R5, R8
4ABFF8:  BLT             loc_4ABFEC
4ABFFA:  B               loc_4AC00C
4ABFFC:  LDR.W           R0, [LR,R4,LSL#2]
4AC000:  LDR             R5, [R0,#4]
4AC002:  CMP             R5, R2
4AC004:  ITT EQ
4AC006:  LDREQ           R5, [R0,#8]
4AC008:  CMPEQ           R5, R3
4AC00A:  BEQ             loc_4ABFBE
4AC00C:  ADDS            R4, #1
4AC00E:  CMP             R4, R12
4AC010:  BLT             loc_4ABFFC
4AC012:  MOVS            R0, #0
4AC014:  POP.W           {R8,R9,R11}
4AC018:  POP             {R4-R7,PC}
