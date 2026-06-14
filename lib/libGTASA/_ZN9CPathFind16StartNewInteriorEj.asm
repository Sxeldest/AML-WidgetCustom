; =========================================================
; Game Engine Function: _ZN9CPathFind16StartNewInteriorEj
; Address            : 0x31A114 - 0x31A164
; =========================================================

31A114:  PUSH            {R7,LR}
31A116:  MOV             R7, SP
31A118:  LDR             R2, =(InteriorIDBeingBuilt_ptr - 0x31A120)
31A11A:  LDR             R3, =(bInteriorBeingBuilt_ptr - 0x31A12A)
31A11C:  ADD             R2, PC; InteriorIDBeingBuilt_ptr
31A11E:  LDR.W           R12, =(NumLinksToExteriorNodes_ptr - 0x31A12C)
31A122:  LDR.W           LR, =(NumNodesGiven_ptr - 0x31A130)
31A126:  ADD             R3, PC; bInteriorBeingBuilt_ptr
31A128:  ADD             R12, PC; NumLinksToExteriorNodes_ptr
31A12A:  LDR             R2, [R2]; InteriorIDBeingBuilt
31A12C:  ADD             LR, PC; NumNodesGiven_ptr
31A12E:  LDR             R3, [R3]; bInteriorBeingBuilt
31A130:  LDR.W           R12, [R12]; NumLinksToExteriorNodes
31A134:  LDR.W           LR, [LR]; NumNodesGiven
31A138:  STR             R1, [R2]
31A13A:  MOVS            R1, #1
31A13C:  MOVW            R2, #0x3588
31A140:  ADD             R0, R2
31A142:  STRB            R1, [R3]
31A144:  MOVS            R1, #0
31A146:  STR.W           R1, [LR]
31A14A:  STR.W           R1, [R12]
31A14E:  LDR.W           R2, [R0,R1,LSL#2]
31A152:  ADDS            R1, #1
31A154:  ADDS            R2, #1
31A156:  BNE             loc_31A14E
31A158:  LDR             R0, =(NewInteriorSlot_ptr - 0x31A160)
31A15A:  SUBS            R1, #1
31A15C:  ADD             R0, PC; NewInteriorSlot_ptr
31A15E:  LDR             R0, [R0]; NewInteriorSlot
31A160:  STR             R1, [R0]
31A162:  POP             {R7,PC}
