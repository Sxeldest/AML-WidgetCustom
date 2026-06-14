; =========================================================
; Game Engine Function: _ZN9CPathFind29AddInteriorLinkToExternalNodeEi12CNodeAddress
; Address            : 0x31A29C - 0x31A2C8
; =========================================================

31A29C:  PUSH            {R7,LR}
31A29E:  MOV             R7, SP
31A2A0:  LDR             R0, =(NumLinksToExteriorNodes_ptr - 0x31A2A8)
31A2A2:  LDR             R3, =(aInteriorNodeLinkedToExterior_ptr - 0x31A2AE)
31A2A4:  ADD             R0, PC; NumLinksToExteriorNodes_ptr
31A2A6:  LDR.W           R12, =(aExteriorNodeLinkedTo_ptr - 0x31A2B2)
31A2AA:  ADD             R3, PC; aInteriorNodeLinkedToExterior_ptr
31A2AC:  LDR             R0, [R0]; NumLinksToExteriorNodes
31A2AE:  ADD             R12, PC; aExteriorNodeLinkedTo_ptr
31A2B0:  LDR.W           LR, [R3]; aInteriorNodeLinkedToExterior
31A2B4:  LDR.W           R12, [R12]; aExteriorNodeLinkedTo
31A2B8:  LDR             R3, [R0]
31A2BA:  STR.W           R1, [LR,R3,LSL#2]
31A2BE:  ADDS            R1, R3, #1
31A2C0:  STR.W           R2, [R12,R3,LSL#2]
31A2C4:  STR             R1, [R0]
31A2C6:  POP             {R7,PC}
