; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime12GetRWTextureEi
; Address            : 0x1E9110 - 0x1E91C4
; =========================================================

1E9110:  PUSH            {R4-R7,LR}
1E9112:  ADD             R7, SP, #0xC
1E9114:  PUSH.W          {R11}
1E9118:  MOV             R5, R1
1E911A:  MOV             R4, R0
1E911C:  ADDS            R0, R5, #1
1E911E:  BEQ             loc_1E9142
1E9120:  MOVS            R0, #0x17
1E9122:  LDR             R1, [R4,#0x1C]
1E9124:  MLA.W           R0, R5, R0, R1; this
1E9128:  MOV             R6, R0
1E912A:  LDRH            R1, [R0,#8]
1E912C:  LDR.W           R2, [R6,#0x13]!
1E9130:  CBZ             R2, loc_1E914A
1E9132:  MOVS            R0, #5
1E9134:  CMP.W           R0, R1,LSR#12
1E9138:  BEQ             loc_1E916A
1E913A:  LSRS            R0, R1, #0xC
1E913C:  CMP             R0, #4
1E913E:  BEQ             loc_1E919C
1E9140:  B               loc_1E91A4
1E9142:  MOVS            R0, #0
1E9144:  POP.W           {R11}
1E9148:  POP             {R4-R7,PC}
1E914A:  AND.W           R1, R1, #0xF00
1E914E:  CMP.W           R1, #0x100
1E9152:  BNE             loc_1E9186
1E9154:  MOV             R0, R4; this
1E9156:  MOV             R1, R5; unsigned int
1E9158:  BLX             j__ZN22TextureDatabaseRuntime15LoadFullTextureEj; TextureDatabaseRuntime::LoadFullTexture(uint)
1E915C:  LDR             R1, =(_ZN22TextureDatabaseRuntime12storedTexelsE_ptr - 0x1E9162)
1E915E:  ADD             R1, PC; _ZN22TextureDatabaseRuntime12storedTexelsE_ptr
1E9160:  LDR             R1, [R1]; TextureDatabaseRuntime::storedTexels ...
1E9162:  LDR             R2, [R1]; TextureDatabaseRuntime::storedTexels
1E9164:  ADD             R0, R2
1E9166:  STR             R0, [R1]; TextureDatabaseRuntime::storedTexels
1E9168:  B               loc_1E91A4
1E916A:  LDR.W           R0, [R4,#0xA0]
1E916E:  CBZ             R0, loc_1E91A4
1E9170:  LDR.W           R1, [R4,#0xA4]
1E9174:  MOVS            R2, #0
1E9176:  LDR.W           R3, [R1,R2,LSL#2]
1E917A:  CMP             R3, R5
1E917C:  BEQ             loc_1E91AC
1E917E:  ADDS            R2, #1
1E9180:  CMP             R2, R0
1E9182:  BCC             loc_1E9176
1E9184:  B               loc_1E91A4
1E9186:  LDR             R1, [R4,#0x74]
1E9188:  ADD.W           R2, R5, R5,LSL#4
1E918C:  ADD.W           R1, R1, R1,LSL#1
1E9190:  ADD.W           R1, R4, R1,LSL#2
1E9194:  LDR             R1, [R1,#0x28]
1E9196:  ADD             R1, R2; TextureListingContainer *
1E9198:  BLX             j__ZN20TextureDatabaseEntry12LoadInstanceERK23TextureListingContainer; TextureDatabaseEntry::LoadInstance(TextureListingContainer const&)
1E919C:  MOV             R0, R4; this
1E919E:  MOV             R1, R5; unsigned int
1E91A0:  BLX             j__ZN22TextureDatabaseRuntime17StreamFullTextureEj; TextureDatabaseRuntime::StreamFullTexture(uint)
1E91A4:  LDR             R0, [R6]
1E91A6:  POP.W           {R11}
1E91AA:  POP             {R4-R7,PC}
1E91AC:  ADD.W           R0, R1, R0,LSL#2
1E91B0:  LDR.W           R0, [R0,#-4]
1E91B4:  STR.W           R0, [R1,R2,LSL#2]
1E91B8:  LDR.W           R0, [R4,#0xA0]
1E91BC:  SUBS            R0, #1
1E91BE:  STR.W           R0, [R4,#0xA0]
1E91C2:  B               loc_1E91A4
