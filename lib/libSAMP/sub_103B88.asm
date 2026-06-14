; =========================================================
; Game Engine Function: sub_103B88
; Address            : 0x103B88 - 0x103C32
; =========================================================

103B88:  PUSH            {R4,R5,R7,LR}
103B8A:  ADD             R7, SP, #8
103B8C:  VPUSH           {D8-D9}
103B90:  MOV             R4, R0
103B92:  LDR             R0, =(_ZTV10CPlayerPed - 0x103B9E); `vtable for'CPlayerPed ...
103B94:  VMOV.I32        Q4, #0
103B98:  MOVS            R5, #0
103B9A:  ADD             R0, PC; `vtable for'CPlayerPed
103B9C:  MOVS            R1, #0xFF
103B9E:  ADDS            R0, #8
103BA0:  STRD.W          R0, R5, [R4]
103BA4:  ADD.W           R0, R4, #0x48 ; 'H'
103BA8:  STRB.W          R1, [R4,#0x38]
103BAC:  MOV.W           R1, #0xFFFFFFFF
103BB0:  VST1.32         {D8-D9}, [R0]!
103BB4:  STRD.W          R1, R1, [R4,#0x6C]
103BB8:  MOVS            R1, #1
103BBA:  STR.W           R5, [R4,#0x3D]
103BBE:  STR.W           R5, [R4,#0x39]
103BC2:  STR             R5, [R4,#0x40]
103BC4:  STR             R1, [R4,#8]
103BC6:  STR             R5, [R0]
103BC8:  BL              sub_1082E4
103BCC:  STR             R0, [R4,#0x5C]
103BCE:  BL              sub_1082E4
103BD2:  LDR             R1, [R4,#0x5C]
103BD4:  STR             R0, [R4,#4]
103BD6:  MOVS            R0, #0
103BD8:  STRB.W          R5, [R4,#0x60]
103BDC:  BL              sub_108D34
103BE0:  LDR             R0, =(aIi - 0x103BEA); "~\bii" ...
103BE2:  MOVS            R2, #1
103BE4:  LDR             R1, [R4,#8]
103BE6:  ADD             R0, PC; "~\bii"
103BE8:  BL              sub_107188
103BEC:  LDR             R0, =(unk_B3636 - 0x103BF6)
103BEE:  MOVS            R2, #0
103BF0:  LDR             R1, [R4,#8]
103BF2:  ADD             R0, PC; unk_B3636
103BF4:  BL              sub_107188
103BF8:  MOVS            R0, #0x20 ; ' '
103BFA:  MOVS            R1, #0
103BFC:  STRD.W          R5, R5, [R4,#0x64]
103C00:  ADDS            R2, R4, R1
103C02:  STRB.W          R5, [R2,#0x74]
103C06:  ADD.W           R2, R4, R0,LSL#2
103C0A:  VST1.32         {D8-D9}, [R2]!
103C0E:  ADDS            R0, #0xD
103C10:  CMP             R0, #0xA2
103C12:  VST1.32         {D8-D9}, [R2]!
103C16:  VST1.32         {D8-D9}, [R2]!
103C1A:  STR             R5, [R2]
103C1C:  ADD.W           R2, R4, R1,LSL#2
103C20:  ADD.W           R1, R1, #1
103C24:  STR.W           R5, [R2,#0x288]
103C28:  BNE             loc_103C00
103C2A:  MOV             R0, R4
103C2C:  VPOP            {D8-D9}
103C30:  POP             {R4,R5,R7,PC}
