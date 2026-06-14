; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControl9SerializeEv
; Address            : 0x4E9824 - 0x4E999E
; =========================================================

4E9824:  PUSH            {R4-R7,LR}
4E9826:  ADD             R7, SP, #0xC
4E9828:  PUSH.W          {R11}
4E982C:  MOV             R4, R0
4E982E:  LDR             R0, [R4]
4E9830:  LDR             R1, [R0,#0x14]
4E9832:  MOV             R0, R4
4E9834:  BLX             R1
4E9836:  MOV             R5, R0
4E9838:  LDR             R0, =(UseDataFence_ptr - 0x4E983E)
4E983A:  ADD             R0, PC; UseDataFence_ptr
4E983C:  LDR             R0, [R0]; UseDataFence
4E983E:  LDRB            R0, [R0]
4E9840:  CMP             R0, #0
4E9842:  IT NE
4E9844:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9848:  MOVS            R0, #4; byte_count
4E984A:  BLX             malloc
4E984E:  MOV             R6, R0
4E9850:  MOVS            R1, #byte_4; void *
4E9852:  STR             R5, [R6]
4E9854:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9858:  MOV             R0, R6; p
4E985A:  BLX             free
4E985E:  LDR             R0, [R4]
4E9860:  LDR             R1, [R0,#0x14]
4E9862:  MOV             R0, R4
4E9864:  BLX             R1
4E9866:  CMP.W           R0, #0x3FC
4E986A:  BNE             loc_4E98BC
4E986C:  LDR             R0, [R4,#0xC]
4E986E:  CBZ             R0, loc_4E98D6
4E9870:  LDR             R1, =(UseDataFence_ptr - 0x4E987A)
4E9872:  LDRB.W          R0, [R0,#0x3A]
4E9876:  ADD             R1, PC; UseDataFence_ptr
4E9878:  AND.W           R6, R0, #7
4E987C:  LDR             R1, [R1]; UseDataFence
4E987E:  LDRB            R1, [R1]
4E9880:  CMP             R1, #0
4E9882:  IT NE
4E9884:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9888:  MOVS            R0, #4; byte_count
4E988A:  BLX             malloc
4E988E:  MOV             R5, R0
4E9890:  MOVS            R1, #byte_4; void *
4E9892:  STR             R6, [R5]
4E9894:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9898:  MOV             R0, R5; p
4E989A:  BLX             free
4E989E:  LDR             R0, [R4,#0xC]; CVehicle *
4E98A0:  LDRB.W          R1, [R0,#0x3A]
4E98A4:  AND.W           R1, R1, #7
4E98A8:  CMP             R1, #2
4E98AA:  BEQ             loc_4E98FE
4E98AC:  CMP             R1, #3
4E98AE:  BNE             loc_4E992A
4E98B0:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4E98B4:  MOV             R5, R0
4E98B6:  LDR             R0, =(UseDataFence_ptr - 0x4E98BC)
4E98B8:  ADD             R0, PC; UseDataFence_ptr
4E98BA:  B               loc_4E9908
4E98BC:  LDR             R0, [R4]
4E98BE:  LDR             R1, [R0,#0x14]
4E98C0:  MOV             R0, R4
4E98C2:  BLX             R1
4E98C4:  MOV             R1, R0; int
4E98C6:  MOV.W           R0, #0x3FC; int
4E98CA:  POP.W           {R11}
4E98CE:  POP.W           {R4-R7,LR}
4E98D2:  B.W             sub_1941D4
4E98D6:  LDR             R0, =(UseDataFence_ptr - 0x4E98DC)
4E98D8:  ADD             R0, PC; UseDataFence_ptr
4E98DA:  LDR             R0, [R0]; UseDataFence
4E98DC:  LDRB            R0, [R0]
4E98DE:  CMP             R0, #0
4E98E0:  IT NE
4E98E2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E98E6:  MOVS            R0, #4; byte_count
4E98E8:  BLX             malloc
4E98EC:  MOV             R5, R0
4E98EE:  MOVS            R0, #0
4E98F0:  STR             R0, [R5]
4E98F2:  MOV             R0, R5; this
4E98F4:  MOVS            R1, #byte_4; void *
4E98F6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E98FA:  MOV             R0, R5
4E98FC:  B               loc_4E9926
4E98FE:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4E9902:  MOV             R5, R0
4E9904:  LDR             R0, =(UseDataFence_ptr - 0x4E990A)
4E9906:  ADD             R0, PC; UseDataFence_ptr
4E9908:  LDR             R0, [R0]; UseDataFence
4E990A:  LDRB            R0, [R0]
4E990C:  CMP             R0, #0
4E990E:  IT NE
4E9910:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9914:  MOVS            R0, #4; byte_count
4E9916:  BLX             malloc
4E991A:  MOV             R6, R0
4E991C:  MOVS            R1, #byte_4; void *
4E991E:  STR             R5, [R6]
4E9920:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9924:  MOV             R0, R6; p
4E9926:  BLX             free
4E992A:  LDR             R0, =(UseDataFence_ptr - 0x4E9930)
4E992C:  ADD             R0, PC; UseDataFence_ptr
4E992E:  LDR             R0, [R0]; UseDataFence
4E9930:  LDRB            R0, [R0]
4E9932:  CMP             R0, #0
4E9934:  IT NE
4E9936:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E993A:  MOVS            R0, #0xC; byte_count
4E993C:  BLX             malloc
4E9940:  ADD.W           R1, R4, #0x10
4E9944:  MOV             R5, R0
4E9946:  LDR             R0, [R4,#0x18]
4E9948:  VLD1.8          {D16}, [R1]
4E994C:  MOVS            R1, #(byte_9+3); void *
4E994E:  STR             R0, [R5,#8]
4E9950:  MOV             R0, R5; this
4E9952:  VST1.8          {D16}, [R5]
4E9956:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E995A:  MOV             R0, R5; p
4E995C:  BLX             free
4E9960:  LDR             R0, =(UseDataFence_ptr - 0x4E9966)
4E9962:  ADD             R0, PC; UseDataFence_ptr
4E9964:  LDR             R0, [R0]; UseDataFence
4E9966:  LDRB            R0, [R0]
4E9968:  CMP             R0, #0
4E996A:  IT NE
4E996C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9970:  MOVS            R0, #0xC; byte_count
4E9972:  BLX             malloc
4E9976:  ADD.W           R1, R4, #0x1C
4E997A:  MOV             R5, R0
4E997C:  LDR             R0, [R4,#0x24]
4E997E:  VLD1.8          {D16}, [R1]
4E9982:  MOVS            R1, #(byte_9+3); void *
4E9984:  STR             R0, [R5,#8]
4E9986:  MOV             R0, R5; this
4E9988:  VST1.8          {D16}, [R5]
4E998C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9990:  MOV             R0, R5; p
4E9992:  POP.W           {R11}
4E9996:  POP.W           {R4-R7,LR}
4E999A:  B.W             j_free
