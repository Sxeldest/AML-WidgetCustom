; =========================================================
; Game Engine Function: _ZN9OALSourceD2Ev
; Address            : 0x27F970 - 0x27FA46
; =========================================================

27F970:  PUSH            {R4-R7,LR}
27F972:  ADD             R7, SP, #0xC
27F974:  PUSH.W          {R11}
27F978:  MOV             R4, R0
27F97A:  LDR             R0, =(_ZTV9OALSource_ptr - 0x27F980)
27F97C:  ADD             R0, PC; _ZTV9OALSource_ptr
27F97E:  LDR             R1, [R0]; `vtable for'OALSource ...
27F980:  LDR             R0, [R4,#0x10]; this
27F982:  ADDS            R1, #8
27F984:  STR             R1, [R4]
27F986:  CMP             R0, #0
27F988:  ITT NE
27F98A:  LDRNE           R1, [R4,#0xC]
27F98C:  CMPNE           R1, #2
27F98E:  BEQ             loc_27F9B4
27F990:  LDR             R1, [R4,#8]
27F992:  CBZ             R1, loc_27F9AC
27F994:  MOV             R0, R1
27F996:  MOVW            R1, #0x1009
27F99A:  MOVS            R2, #0
27F99C:  BLX             j_alSourcei
27F9A0:  LDR             R0, [R4,#0x10]; this
27F9A2:  CMP             R0, #0
27F9A4:  IT NE
27F9A6:  BLXNE           j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
27F9AA:  B               loc_27F9B0
27F9AC:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
27F9B0:  MOVS            R0, #0
27F9B2:  STR             R0, [R4,#0x10]
27F9B4:  MOV             R6, R4
27F9B6:  LDR.W           R0, [R6,#8]!
27F9BA:  CBZ             R0, loc_27FA18
27F9BC:  LDR             R0, [R4,#0xC]
27F9BE:  BIC.W           R0, R0, #1
27F9C2:  CMP             R0, #2
27F9C4:  ITT EQ
27F9C6:  MOVEQ           R0, R4; this
27F9C8:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
27F9CC:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27F9D2)
27F9CE:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27F9D0:  LDR             R0, [R0]; OALSource::activeSources ...
27F9D2:  LDRD.W          R2, R0, [R0,#(dword_6DFD74 - 0x6DFD70)]
27F9D6:  CBZ             R2, loc_27F9E8
27F9D8:  MOVS            R3, #0
27F9DA:  LDR.W           R1, [R0,R3,LSL#2]
27F9DE:  CMP             R1, R4
27F9E0:  BEQ             loc_27F9EC
27F9E2:  ADDS            R3, #1
27F9E4:  CMP             R3, R2
27F9E6:  BCC             loc_27F9DA
27F9E8:  MOV.W           R3, #0xFFFFFFFF
27F9EC:  ADD.W           R0, R0, R3,LSL#2; dest
27F9F0:  MOV             R5, #0x3FFFFFFF
27F9F4:  SUBS            R3, R5, R3
27F9F6:  ADDS            R1, R0, #4; src
27F9F8:  ADD             R2, R3
27F9FA:  LSLS            R2, R2, #2; n
27F9FC:  BLX             memmove_1
27FA00:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FA06)
27FA02:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FA04:  LDR             R0, [R0]; OALSource::activeSources ...
27FA06:  LDR             R1, [R0,#(dword_6DFD74 - 0x6DFD70)]
27FA08:  SUBS            R1, #1
27FA0A:  STR             R1, [R0,#(dword_6DFD74 - 0x6DFD70)]
27FA0C:  MOVS            R0, #1
27FA0E:  MOV             R1, R6
27FA10:  BLX             j_alDeleteSources
27FA14:  MOVS            R0, #0
27FA16:  STR             R0, [R6]
27FA18:  LDR             R0, [R4,#0x1C]; p
27FA1A:  MOVS            R5, #0
27FA1C:  STR             R5, [R4,#0x18]
27FA1E:  CBZ             R0, loc_27FA26
27FA20:  BLX             free
27FA24:  STR             R5, [R4,#0x1C]
27FA26:  LDR             R0, =(_ZN7OALBase11livingCountE_ptr - 0x27FA2E)
27FA28:  LDR             R1, =(_ZTV7OALBase_ptr - 0x27FA32)
27FA2A:  ADD             R0, PC; _ZN7OALBase11livingCountE_ptr
27FA2C:  STR             R5, [R4,#0x14]
27FA2E:  ADD             R1, PC; _ZTV7OALBase_ptr
27FA30:  LDR             R0, [R0]; OALBase::livingCount ...
27FA32:  LDR             R1, [R1]; `vtable for'OALBase ...
27FA34:  ADDS            R1, #8
27FA36:  STR             R1, [R4]
27FA38:  LDR             R1, [R0]; OALBase::livingCount
27FA3A:  SUBS            R1, #1
27FA3C:  STR             R1, [R0]; OALBase::livingCount
27FA3E:  MOV             R0, R4
27FA40:  POP.W           {R11}
27FA44:  POP             {R4-R7,PC}
