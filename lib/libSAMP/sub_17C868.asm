; =========================================================
; Game Engine Function: sub_17C868
; Address            : 0x17C868 - 0x17C8EA
; =========================================================

17C868:  PUSH            {R4-R7,LR}
17C86A:  ADD             R7, SP, #0xC
17C86C:  PUSH.W          {R8-R11}
17C870:  SUB             SP, SP, #0x14
17C872:  MOV             R9, R3
17C874:  MOV             R10, R2
17C876:  MOV             R8, R1
17C878:  MOV             R6, R0
17C87A:  LDRD.W          R5, R11, [R7,#arg_0]
17C87E:  BL              sub_17C080
17C882:  CBZ             R0, loc_17C8CA
17C884:  ADD             R2, SP, #0x30+var_20
17C886:  MOV             R1, R5
17C888:  MOV             R4, R0
17C88A:  BL              sub_17C5B0
17C88E:  LDR             R1, [R6]
17C890:  MOV             R3, R8
17C892:  LDR             R2, [R6,#0x28]
17C894:  LDR             R0, [SP,#0x30+var_20]
17C896:  STRD.W          R0, R11, [SP,#0x30+var_28]
17C89A:  MOV             R0, R4
17C89C:  STRD.W          R10, R9, [SP,#0x30+var_30]
17C8A0:  BL              sub_17C1B8
17C8A4:  LDR             R0, [R4]
17C8A6:  LDR.W           R1, [R0,#0x390]
17C8AA:  MOV             R0, R4
17C8AC:  BLX             R1
17C8AE:  CBZ             R0, loc_17C8E2
17C8B0:  LDR             R0, [R4]
17C8B2:  LDR             R1, [R0,#0x40]
17C8B4:  MOV             R0, R4
17C8B6:  BLX             R1
17C8B8:  LDR             R0, [R4]
17C8BA:  LDR             R1, [R0,#0x44]
17C8BC:  MOV             R0, R4
17C8BE:  ADD             SP, SP, #0x14
17C8C0:  POP.W           {R8-R11}
17C8C4:  POP.W           {R4-R7,LR}
17C8C8:  BX              R1
17C8CA:  LDR             R1, =(aAxl - 0x17C8D4); "AXL" ...
17C8CC:  MOVS            R0, #4
17C8CE:  LDR             R2, =(aEnvNotLoadedAd_0 - 0x17C8D6); "Env not loaded (addSliderToAzVoicePlaye"... ...
17C8D0:  ADD             R1, PC; "AXL"
17C8D2:  ADD             R2, PC; "Env not loaded (addSliderToAzVoicePlaye"...
17C8D4:  ADD             SP, SP, #0x14
17C8D6:  POP.W           {R8-R11}
17C8DA:  POP.W           {R4-R7,LR}
17C8DE:  B.W             sub_2242C8
17C8E2:  ADD             SP, SP, #0x14
17C8E4:  POP.W           {R8-R11}
17C8E8:  POP             {R4-R7,PC}
