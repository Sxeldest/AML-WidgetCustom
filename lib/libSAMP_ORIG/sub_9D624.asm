; =========================================================
; Game Engine Function: sub_9D624
; Address            : 0x9D624 - 0x9D6F8
; =========================================================

9D624:  PUSH            {R4-R7,LR}
9D626:  ADD             R7, SP, #0xC
9D628:  PUSH.W          {R8-R10}
9D62C:  SUB             SP, SP, #8
9D62E:  CMP.W           R3, #0x1000000
9D632:  BCC             loc_9D6F0
9D634:  VLDR            S0, [R7,#arg_0]
9D638:  MOV             R5, R3
9D63A:  MOV             R8, R2
9D63C:  MOV             R6, R1
9D63E:  VCMP.F32        S0, #0.0
9D642:  MOV             R4, R0
9D644:  VMRS            APSR_nzcv, FPSCR
9D648:  BLE             loc_9D66E
9D64A:  VMOV            R3, S0
9D64E:  LDR             R0, [R7,#arg_4]
9D650:  STR             R0, [SP,#0x20+var_20]
9D652:  MOV             R0, R4
9D654:  MOV             R1, R6
9D656:  MOV             R2, R8
9D658:  BL              sub_9D108
9D65C:  LDR             R2, [R4,#0x58]
9D65E:  MOV             R0, R4
9D660:  LDR             R1, [R4,#0x60]
9D662:  MOV             R3, R5
9D664:  BL              sub_9CA40
9D668:  MOVS            R0, #0
9D66A:  STR             R0, [R4,#0x58]
9D66C:  B               loc_9D6F0
9D66E:  MOV             R0, R4
9D670:  MOVS            R1, #6
9D672:  MOVS            R2, #4
9D674:  BL              sub_9C1B4
9D678:  LDRH            R3, [R4,#0x34]
9D67A:  LDR             R1, [R4,#0x28]
9D67C:  LDRD.W          R12, R2, [R4,#0x38]
9D680:  ADDS            R0, R3, #3
9D682:  LDRD.W          LR, R1, [R1]
9D686:  STRH            R0, [R2,#0xA]
9D688:  ADDS            R0, R3, #2
9D68A:  STRH            R0, [R2,#8]
9D68C:  STRH            R0, [R2,#4]
9D68E:  ADDS            R0, R3, #1
9D690:  STRH            R0, [R2,#2]
9D692:  STRH            R3, [R2,#6]
9D694:  STRH            R3, [R2]
9D696:  LDRD.W          R9, R0, [R6]
9D69A:  LDRD.W          R3, R6, [R6]
9D69E:  LDRD.W          R2, R10, [R8]
9D6A2:  STRD.W          R3, R6, [R12]
9D6A6:  LDR             R3, [R4,#0x38]
9D6A8:  STRD.W          LR, R1, [R3,#8]
9D6AC:  LDR             R3, [R4,#0x38]
9D6AE:  STRD.W          R5, R2, [R3,#0x10]
9D6B2:  STR             R0, [R3,#0x18]
9D6B4:  LDR             R0, [R4,#0x38]
9D6B6:  STRD.W          LR, R1, [R0,#0x1C]
9D6BA:  LDR             R0, [R4,#0x38]
9D6BC:  STR             R5, [R0,#0x24]
9D6BE:  LDRD.W          R2, R3, [R8]
9D6C2:  STRD.W          R2, R3, [R0,#0x28]
9D6C6:  LDR             R0, [R4,#0x38]
9D6C8:  STRD.W          LR, R1, [R0,#0x30]
9D6CC:  LDR             R0, [R4,#0x38]
9D6CE:  STRD.W          R9, R10, [R0,#0x3C]
9D6D2:  LDR             R2, [R4,#0x38]
9D6D4:  STR             R5, [R0,#0x38]
9D6D6:  STRD.W          LR, R1, [R2,#0x44]
9D6DA:  ADD.W           R2, R4, #0x34 ; '4'
9D6DE:  LDM             R2, {R0-R2}
9D6E0:  ADD.W           R3, R1, #0x50 ; 'P'
9D6E4:  ADDS            R2, #0xC
9D6E6:  ADDS            R0, #4
9D6E8:  STRD.W          R0, R3, [R4,#0x34]
9D6EC:  STR             R2, [R4,#0x3C]
9D6EE:  STR             R5, [R1,#0x4C]
9D6F0:  ADD             SP, SP, #8
9D6F2:  POP.W           {R8-R10}
9D6F6:  POP             {R4-R7,PC}
