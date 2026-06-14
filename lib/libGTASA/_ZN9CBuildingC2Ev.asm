; =========================================================
; Game Engine Function: _ZN9CBuildingC2Ev
; Address            : 0x280064 - 0x280090
; =========================================================

280064:  PUSH            {R7,LR}; Alternative name is 'CBuilding::CBuilding(void)'
280066:  MOV             R7, SP
280068:  BLX             j__ZN7CEntityC2Ev; CEntity::CEntity(void)
28006C:  LDR             R1, =(_ZTV9CBuilding_ptr - 0x280074)
28006E:  LDR             R2, [R0,#0x1C]
280070:  ADD             R1, PC; _ZTV9CBuilding_ptr
280072:  LDRB.W          R3, [R0,#0x3A]
280076:  ORR.W           R2, R2, #1
28007A:  STR             R2, [R0,#0x1C]
28007C:  LDR             R1, [R1]; `vtable for'CBuilding ...
28007E:  AND.W           R2, R3, #0xF8
280082:  ORR.W           R2, R2, #1
280086:  STRB.W          R2, [R0,#0x3A]
28008A:  ADDS            R1, #8
28008C:  STR             R1, [R0]
28008E:  POP             {R7,PC}
