; =========================================================
; Game Engine Function: _ZN8CPickups23FindPickUpForThisObjectEP7CObject
; Address            : 0x320418 - 0x32044C
; =========================================================

320418:  PUSH            {R7,LR}
32041A:  MOV             R7, SP
32041C:  LDR             R3, =(_ZN8CPickups8aPickUpsE_ptr - 0x32042A)
32041E:  MOV             R1, R0
320420:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x320430)
320422:  MOV.W           R2, #0xFFFFFFFF
320426:  ADD             R3, PC; _ZN8CPickups8aPickUpsE_ptr
320428:  MOVW            LR, #0x26B
32042C:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
32042E:  LDR.W           R12, [R3]; CPickups::aPickUps ...
320432:  LDR             R0, [R0]; CPickups::aPickUps ...
320434:  LDRB            R3, [R0,#0x1C]
320436:  CBZ             R3, loc_320440
320438:  LDR             R3, [R0,#4]
32043A:  CMP             R3, R1
32043C:  IT EQ
32043E:  POPEQ           {R7,PC}
320440:  ADDS            R2, #1
320442:  ADDS            R0, #0x20 ; ' '
320444:  CMP             R2, LR
320446:  BLT             loc_320434
320448:  MOV             R0, R12
32044A:  POP             {R7,PC}
