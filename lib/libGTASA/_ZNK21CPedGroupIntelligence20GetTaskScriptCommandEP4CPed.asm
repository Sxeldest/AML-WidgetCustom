; =========================================================
; Game Engine Function: _ZNK21CPedGroupIntelligence20GetTaskScriptCommandEP4CPed
; Address            : 0x4B3928 - 0x4B3998
; =========================================================

4B3928:  LDR.W           R2, [R0,#0x14C]
4B392C:  CMP             R2, R1
4B392E:  BEQ             loc_4B3970
4B3930:  LDR.W           R2, [R0,#0x160]
4B3934:  CMP             R2, R1
4B3936:  BEQ             loc_4B3974
4B3938:  LDR.W           R2, [R0,#0x174]
4B393C:  CMP             R2, R1
4B393E:  BEQ             loc_4B3978
4B3940:  LDR.W           R2, [R0,#0x188]
4B3944:  CMP             R2, R1
4B3946:  BEQ             loc_4B397C
4B3948:  LDR.W           R2, [R0,#0x19C]
4B394C:  CMP             R2, R1
4B394E:  BEQ             loc_4B3980
4B3950:  LDR.W           R2, [R0,#0x1B0]
4B3954:  CMP             R2, R1
4B3956:  BEQ             loc_4B3984
4B3958:  LDR.W           R2, [R0,#0x1C4]
4B395C:  CMP             R2, R1
4B395E:  BEQ             loc_4B3988
4B3960:  LDR.W           R2, [R0,#0x1D8]
4B3964:  CMP             R2, R1
4B3966:  ITT NE
4B3968:  MOVNE           R0, #0
4B396A:  BXNE            LR
4B396C:  MOVS            R1, #7
4B396E:  B               loc_4B398A
4B3970:  MOVS            R1, #0
4B3972:  B               loc_4B398A
4B3974:  MOVS            R1, #1
4B3976:  B               loc_4B398A
4B3978:  MOVS            R1, #2
4B397A:  B               loc_4B398A
4B397C:  MOVS            R1, #3
4B397E:  B               loc_4B398A
4B3980:  MOVS            R1, #4
4B3982:  B               loc_4B398A
4B3984:  MOVS            R1, #5
4B3986:  B               loc_4B398A
4B3988:  MOVS            R1, #6
4B398A:  ADD.W           R1, R1, R1,LSL#2
4B398E:  ADD.W           R0, R0, R1,LSL#2
4B3992:  LDR.W           R0, [R0,#0x150]
4B3996:  BX              LR
