; =========================================================
; Game Engine Function: sub_144B8E
; Address            : 0x144B8E - 0x144BC2
; =========================================================

144B8E:  PUSH            {R4-R7,LR}
144B90:  ADD             R7, SP, #0xC
144B92:  PUSH.W          {R11}
144B96:  LDR             R5, [R0]
144B98:  MOV             R4, R0
144B9A:  CBZ             R5, loc_144BBA
144B9C:  LDR             R6, [R4,#4]
144B9E:  MOV             R0, R5
144BA0:  CMP             R6, R5
144BA2:  BEQ             loc_144BB4
144BA4:  SUBS            R0, R6, #4
144BA6:  MOVS            R1, #0
144BA8:  BL              sub_13E4F0
144BAC:  SUBS            R6, #0x3C ; '<'
144BAE:  CMP             R6, R5
144BB0:  BNE             loc_144BA4
144BB2:  LDR             R0, [R4]; void *
144BB4:  STR             R5, [R4,#4]
144BB6:  BLX             j__ZdlPv; operator delete(void *)
144BBA:  MOV             R0, R4
144BBC:  POP.W           {R11}
144BC0:  POP             {R4-R7,PC}
