; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill9SerializeEv
; Address            : 0x5068DC - 0x506A8C
; =========================================================

5068DC:  PUSH            {R4-R7,LR}
5068DE:  ADD             R7, SP, #0xC
5068E0:  PUSH.W          {R11}
5068E4:  MOV             R4, R0
5068E6:  LDR             R0, [R4]
5068E8:  LDR             R1, [R0,#0x14]
5068EA:  MOV             R0, R4
5068EC:  BLX             R1
5068EE:  MOV             R5, R0
5068F0:  LDR             R0, =(UseDataFence_ptr - 0x5068F6)
5068F2:  ADD             R0, PC; UseDataFence_ptr
5068F4:  LDR             R0, [R0]; UseDataFence
5068F6:  LDRB            R0, [R0]
5068F8:  CMP             R0, #0
5068FA:  IT NE
5068FC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
506900:  MOVS            R0, #4; byte_count
506902:  BLX             malloc
506906:  MOV             R6, R0
506908:  MOVS            R1, #byte_4; void *
50690A:  STR             R5, [R6]
50690C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
506910:  MOV             R0, R6; p
506912:  BLX             free
506916:  LDR             R0, [R4]
506918:  LDR             R1, [R0,#0x14]
50691A:  MOV             R0, R4
50691C:  BLX             R1
50691E:  CMP.W           R0, #0x320
506922:  BNE             loc_506952
506924:  LDR             R0, [R4,#0xC]; CVehicle *
506926:  CBZ             R0, loc_50696C
506928:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50692C:  MOV             R5, R0
50692E:  LDR             R0, =(UseDataFence_ptr - 0x506934)
506930:  ADD             R0, PC; UseDataFence_ptr
506932:  LDR             R0, [R0]; UseDataFence
506934:  LDRB            R0, [R0]
506936:  CMP             R0, #0
506938:  IT NE
50693A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50693E:  MOVS            R0, #4; byte_count
506940:  BLX             malloc
506944:  MOV             R6, R0
506946:  MOVS            R1, #byte_4; void *
506948:  STR             R5, [R6]
50694A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50694E:  MOV             R0, R6
506950:  B               loc_506994
506952:  LDR             R0, [R4]
506954:  LDR             R1, [R0,#0x14]
506956:  MOV             R0, R4
506958:  BLX             R1
50695A:  MOV             R1, R0; int
50695C:  MOV.W           R0, #0x320; int
506960:  POP.W           {R11}
506964:  POP.W           {R4-R7,LR}
506968:  B.W             sub_1941D4
50696C:  LDR             R0, =(UseDataFence_ptr - 0x506972)
50696E:  ADD             R0, PC; UseDataFence_ptr
506970:  LDR             R0, [R0]; UseDataFence
506972:  LDRB            R0, [R0]
506974:  CMP             R0, #0
506976:  IT NE
506978:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50697C:  MOVS            R0, #4; byte_count
50697E:  BLX             malloc
506982:  MOV             R5, R0
506984:  MOV.W           R0, #0xFFFFFFFF
506988:  STR             R0, [R5]
50698A:  MOV             R0, R5; this
50698C:  MOVS            R1, #byte_4; void *
50698E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
506992:  MOV             R0, R5; p
506994:  BLX             free
506998:  LDR             R0, =(UseDataFence_ptr - 0x50699E)
50699A:  ADD             R0, PC; UseDataFence_ptr
50699C:  LDR             R0, [R0]; UseDataFence
50699E:  LDRB            R0, [R0]
5069A0:  CMP             R0, #0
5069A2:  IT NE
5069A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5069A8:  MOVS            R0, #4; byte_count
5069AA:  BLX             malloc
5069AE:  MOV             R5, R0
5069B0:  LDR             R0, [R4,#0x10]
5069B2:  STR             R0, [R5]
5069B4:  MOV             R0, R5; this
5069B6:  MOVS            R1, #byte_4; void *
5069B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5069BC:  MOV             R0, R5; p
5069BE:  BLX             free
5069C2:  LDR             R0, =(UseDataFence_ptr - 0x5069C8)
5069C4:  ADD             R0, PC; UseDataFence_ptr
5069C6:  LDR             R0, [R0]; UseDataFence
5069C8:  LDRB            R0, [R0]
5069CA:  CMP             R0, #0
5069CC:  IT NE
5069CE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5069D2:  ADD.W           R0, R4, #0x14; this
5069D6:  MOVS            R1, #(stderr+1); void *
5069D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5069DC:  LDR             R0, =(UseDataFence_ptr - 0x5069E2)
5069DE:  ADD             R0, PC; UseDataFence_ptr
5069E0:  LDR             R0, [R0]; UseDataFence
5069E2:  LDRB            R0, [R0]
5069E4:  CMP             R0, #0
5069E6:  IT NE
5069E8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5069EC:  MOVS            R0, #4; byte_count
5069EE:  BLX             malloc
5069F2:  MOV             R5, R0
5069F4:  LDR             R0, [R4,#0x44]
5069F6:  STR             R0, [R5]
5069F8:  MOV             R0, R5; this
5069FA:  MOVS            R1, #byte_4; void *
5069FC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
506A00:  MOV             R0, R5; p
506A02:  BLX             free
506A06:  LDR             R0, =(UseDataFence_ptr - 0x506A0C)
506A08:  ADD             R0, PC; UseDataFence_ptr
506A0A:  LDR             R0, [R0]; UseDataFence
506A0C:  LDRB            R0, [R0]
506A0E:  CMP             R0, #0
506A10:  IT NE
506A12:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
506A16:  MOVS            R0, #4; byte_count
506A18:  BLX             malloc
506A1C:  MOV             R5, R0
506A1E:  LDR             R0, [R4,#0x18]
506A20:  STR             R0, [R5]
506A22:  MOV             R0, R5; this
506A24:  MOVS            R1, #byte_4; void *
506A26:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
506A2A:  MOV             R0, R5; p
506A2C:  BLX             free
506A30:  LDR             R0, =(UseDataFence_ptr - 0x506A36)
506A32:  ADD             R0, PC; UseDataFence_ptr
506A34:  LDR             R0, [R0]; UseDataFence
506A36:  LDRB            R0, [R0]
506A38:  CMP             R0, #0
506A3A:  IT NE
506A3C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
506A40:  MOVS            R0, #4; byte_count
506A42:  BLX             malloc
506A46:  MOV             R5, R0
506A48:  LDR             R0, [R4,#0x1C]
506A4A:  STR             R0, [R5]
506A4C:  MOV             R0, R5; this
506A4E:  MOVS            R1, #byte_4; void *
506A50:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
506A54:  MOV             R0, R5; p
506A56:  BLX             free
506A5A:  LDR             R0, =(UseDataFence_ptr - 0x506A60)
506A5C:  ADD             R0, PC; UseDataFence_ptr
506A5E:  LDR             R0, [R0]; UseDataFence
506A60:  LDRB            R0, [R0]
506A62:  CMP             R0, #0
506A64:  IT NE
506A66:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
506A6A:  MOVS            R0, #4; byte_count
506A6C:  BLX             malloc
506A70:  MOV             R5, R0
506A72:  LDR             R0, [R4,#0x24]
506A74:  STR             R0, [R5]
506A76:  MOV             R0, R5; this
506A78:  MOVS            R1, #byte_4; void *
506A7A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
506A7E:  MOV             R0, R5; p
506A80:  POP.W           {R11}
506A84:  POP.W           {R4-R7,LR}
506A88:  B.W             j_free
