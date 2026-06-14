; =========================================================
; Game Engine Function: _ZN8CVehicle14SetupPassengerEiibb
; Address            : 0x58488E - 0x584978
; =========================================================

58488E:  PUSH            {R4-R7,LR}
584890:  ADD             R7, SP, #0xC
584892:  PUSH.W          {R8-R10}; bool
584896:  SUB             SP, SP, #8
584898:  MOV             R10, R1
58489A:  MOV             R4, R0
58489C:  ADD.W           R0, R4, R10,LSL#2
5848A0:  MOV             R8, R2
5848A2:  LDR.W           R6, [R0,#0x468]
5848A6:  CMP             R6, #0
5848A8:  BNE             loc_584934
5848AA:  LDRH            R0, [R4,#0x26]
5848AC:  CMP.W           R0, #0x1B6
5848B0:  IT NE
5848B2:  CMPNE.W         R0, #0x1A4
5848B6:  BNE             loc_58491C
5848B8:  CMP.W           R10, #0
5848BC:  BEQ             loc_58492A
5848BE:  LDR             R0, [R7,#arg_0]
5848C0:  MOVS            R1, #0; CVehicle *
5848C2:  MOV             R2, R8; bool
5848C4:  STRD.W          R3, R0, [SP,#0x20+var_20]; CPopulation *
5848C8:  MOV             R0, R4; this
5848CA:  MOV             R3, R10; int
5848CC:  BLX             j__ZN11CPopulation11AddPedInCarEP8CVehiclebiibb; CPopulation::AddPedInCar(CVehicle *,bool,int,int,bool,bool)
5848D0:  MOV             R6, R0
5848D2:  LDR.W           R0, [R6,#0x59C]
5848D6:  LDRH.W          R9, [R6,#0x26]
5848DA:  CMP             R0, #0x13
5848DC:  BHI             loc_5848EC
5848DE:  MOVS            R1, #1
5848E0:  MOVS            R2, #:lower16:(aZn8cvehicle28q+0x2B); "v"
5848E2:  LSLS            R1, R0
5848E4:  MOVT            R2, #:upper16:(aZn8cvehicle28q+0x2B); "v"
5848E8:  TST             R1, R2
5848EA:  BNE             loc_584934
5848EC:  SUBS            R1, R0, #7
5848EE:  CMP             R1, #0xA
5848F0:  BCC             loc_584934
5848F2:  SUB.W           R1, R8, #0xE
5848F6:  CMP             R1, #9
5848F8:  BHI             loc_5848FE
5848FA:  CMP             R0, #0x14
5848FC:  BEQ             loc_584934
5848FE:  LDR.W           R0, [R4,#0x464]
584902:  CBZ             R0, loc_58493E
584904:  LDRH            R0, [R0,#0x26]
584906:  CMP             R0, R9
584908:  BNE             loc_58493E
58490A:  MOV             R0, R4; this
58490C:  MOV             R1, R6; CPed *
58490E:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
584912:  MOV             R0, R6; this
584914:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
584918:  MOVS            R6, #0
58491A:  B               loc_584934
58491C:  CMP.W           R10, #0
584920:  ITT EQ
584922:  MOVWEQ          R1, #0x199
584926:  CMPEQ           R0, R1
584928:  BNE             loc_5848BE
58492A:  MOV             R0, R4; this
58492C:  MOVS            R1, #0; CPed *
58492E:  MOVS            R6, #0
584930:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
584934:  MOV             R0, R6
584936:  ADD             SP, SP, #8
584938:  POP.W           {R8-R10}
58493C:  POP             {R4-R7,PC}
58493E:  CMP.W           R10, #1
584942:  BLT             loc_584934
584944:  MOVS            R5, #0
584946:  ADD.W           R0, R4, R5,LSL#2
58494A:  LDR.W           R0, [R0,#0x468]
58494E:  CMP             R0, R6
584950:  BEQ             loc_584970
584952:  CMP             R6, #0
584954:  IT NE
584956:  CMPNE           R0, #0
584958:  BEQ             loc_584970
58495A:  LDRH            R0, [R0,#0x26]
58495C:  CMP             R0, R9
58495E:  BNE             loc_584970
584960:  MOV             R0, R4; this
584962:  MOV             R1, R6; CPed *
584964:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
584968:  MOV             R0, R6; this
58496A:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
58496E:  MOVS            R6, #0
584970:  ADDS            R5, #1
584972:  CMP             R10, R5
584974:  BNE             loc_584946
584976:  B               loc_584934
