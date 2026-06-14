; =========================================================
; Game Engine Function: _ZN12SelectScreen7AddItemEPNS_13MenuSelectionE
; Address            : 0x29E85C - 0x29E920
; =========================================================

29E85C:  PUSH            {R4-R7,LR}
29E85E:  ADD             R7, SP, #0xC
29E860:  PUSH.W          {R8-R10}
29E864:  MOV             R4, R0
29E866:  MOV             R8, R1
29E868:  LDRD.W          R1, R5, [R4,#0x14]
29E86C:  ADDS            R0, R5, #1
29E86E:  CMP             R1, R0
29E870:  BCS             loc_29E8B4
29E872:  MOVW            R1, #0xAAAB
29E876:  LSLS            R0, R0, #2
29E878:  MOVT            R1, #0xAAAA
29E87C:  UMULL.W         R0, R1, R0, R1
29E880:  MOVS            R0, #3
29E882:  ADD.W           R10, R0, R1,LSR#1
29E886:  MOV.W           R0, R10,LSL#2; byte_count
29E88A:  BLX             malloc
29E88E:  LDR.W           R9, [R4,#0x1C]
29E892:  MOV             R6, R0
29E894:  CMP.W           R9, #0
29E898:  BEQ             loc_29E8AC
29E89A:  LSLS            R2, R5, #2; size_t
29E89C:  MOV             R0, R6; void *
29E89E:  MOV             R1, R9; void *
29E8A0:  BLX             memcpy_0
29E8A4:  MOV             R0, R9; p
29E8A6:  BLX             free
29E8AA:  LDR             R5, [R4,#0x18]
29E8AC:  STR             R6, [R4,#0x1C]
29E8AE:  STR.W           R10, [R4,#0x14]
29E8B2:  B               loc_29E8B6
29E8B4:  LDR             R6, [R4,#0x1C]
29E8B6:  STR.W           R8, [R6,R5,LSL#2]
29E8BA:  LDR             R0, [R4,#0x18]
29E8BC:  LDRD.W          R1, R6, [R4,#0x20]
29E8C0:  ADDS            R0, #1
29E8C2:  STR             R0, [R4,#0x18]
29E8C4:  ADDS            R0, R6, #1
29E8C6:  CMP             R1, R0
29E8C8:  BCS             loc_29E90C
29E8CA:  MOVW            R1, #0xAAAB
29E8CE:  LSLS            R0, R0, #2
29E8D0:  MOVT            R1, #0xAAAA
29E8D4:  UMULL.W         R0, R1, R0, R1
29E8D8:  MOVS            R0, #3
29E8DA:  ADD.W           R9, R0, R1,LSR#1
29E8DE:  MOV.W           R0, R9,LSL#2; byte_count
29E8E2:  BLX             malloc
29E8E6:  LDR.W           R8, [R4,#0x28]
29E8EA:  MOV             R5, R0
29E8EC:  CMP.W           R8, #0
29E8F0:  BEQ             loc_29E904
29E8F2:  LSLS            R2, R6, #2; size_t
29E8F4:  MOV             R0, R5; void *
29E8F6:  MOV             R1, R8; void *
29E8F8:  BLX             memcpy_0
29E8FC:  MOV             R0, R8; p
29E8FE:  BLX             free
29E902:  LDR             R6, [R4,#0x24]
29E904:  STR             R5, [R4,#0x28]
29E906:  STR.W           R9, [R4,#0x20]
29E90A:  B               loc_29E90E
29E90C:  LDR             R5, [R4,#0x28]
29E90E:  MOVS            R0, #0
29E910:  STR.W           R0, [R5,R6,LSL#2]
29E914:  LDR             R0, [R4,#0x24]
29E916:  ADDS            R0, #1
29E918:  STR             R0, [R4,#0x24]
29E91A:  POP.W           {R8-R10}
29E91E:  POP             {R4-R7,PC}
