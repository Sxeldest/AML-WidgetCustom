; =========================================================
; Game Engine Function: sub_1861AA
; Address            : 0x1861AA - 0x18621A
; =========================================================

1861AA:  PUSH            {R4-R7,LR}
1861AC:  ADD             R7, SP, #0xC
1861AE:  PUSH.W          {R8-R10}
1861B2:  SUB             SP, SP, #0x20
1861B4:  VMOV.I32        Q8, #0
1861B8:  MOV             R5, R0
1861BA:  VLD1.32         {D18-D19}, [R0]
1861BE:  MOV             R9, SP
1861C0:  MOV             R8, R1
1861C2:  MOV.W           R10, #0
1861C6:  VST1.32         {D16-D17}, [R0]!
1861CA:  MOVS            R1, #0
1861CC:  VLD1.32         {D20-D21}, [R0]
1861D0:  VST1.32         {D16-D17}, [R0]
1861D4:  MOV             R0, R9
1861D6:  VST1.64         {D18-D19}, [R0]!
1861DA:  VST1.64         {D20-D21}, [R0]
1861DE:  LDR.W           R4, [R8,R10,LSL#2]
1861E2:  MOVS            R6, #0x20 ; ' '
1861E4:  CBZ             R4, loc_186204
1861E6:  LSLS            R0, R4, #0x1F
1861E8:  BEQ             loc_1861FC
1861EA:  CBZ             R1, loc_1861F2
1861EC:  MOV             R0, R9; int
1861EE:  BL              sub_1850D2
1861F2:  MOV             R0, R5
1861F4:  MOV             R1, R9
1861F6:  BL              sub_185136
1861FA:  MOVS            R1, #0
1861FC:  SUBS            R6, #1
1861FE:  ADDS            R1, #1
186200:  LSRS            R4, R4, #1
186202:  BNE             loc_1861E6
186204:  ADD.W           R10, R10, #1
186208:  UXTAH.W         R1, R1, R6
18620C:  CMP.W           R10, #4
186210:  BNE             loc_1861DE
186212:  ADD             SP, SP, #0x20 ; ' '
186214:  POP.W           {R8-R10}
186218:  POP             {R4-R7,PC}
