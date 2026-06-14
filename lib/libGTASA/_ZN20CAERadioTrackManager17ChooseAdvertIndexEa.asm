; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager17ChooseAdvertIndexEa
; Address            : 0x3A387C - 0x3A3AAA
; =========================================================

3A387C:  PUSH            {R4-R7,LR}
3A387E:  ADD             R7, SP, #0xC
3A3880:  PUSH.W          {R8-R11}
3A3884:  SUB             SP, SP, #0x4C
3A3886:  LDR             R0, =(gnRadioStationRestrictedAdverts_ptr - 0x3A3890)
3A3888:  MOVS            R3, #0x5C ; '\'
3A388A:  LDR             R2, =(_ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr - 0x3A3892)
3A388C:  ADD             R0, PC; gnRadioStationRestrictedAdverts_ptr
3A388E:  ADD             R2, PC; _ZN20CAERadioTrackManager21m_nAdvertIndexHistoryE_ptr
3A3890:  LDR             R0, [R0]; gnRadioStationRestrictedAdverts
3A3892:  SMLABB.W        R4, R1, R3, R0
3A3896:  LDR             R0, [R2]; CAERadioTrackManager::m_nAdvertIndexHistory ...
3A3898:  ADD.W           R1, R1, R1,LSL#2
3A389C:  ADD.W           R0, R0, R1,LSL#5
3A38A0:  STR             R0, [SP,#0x68+var_58]
3A38A2:  MOVS            R0, #0
3A38A4:  ADD.W           R2, R4, #0x58 ; 'X'
3A38A8:  STR             R0, [SP,#0x68+var_68]
3A38AA:  ADD.W           R0, R4, #0x44 ; 'D'
3A38AE:  STR             R0, [SP,#0x68+var_4C]
3A38B0:  ADD.W           R0, R4, #0x40 ; '@'
3A38B4:  STR             R0, [SP,#0x68+var_48]
3A38B6:  ADD.W           R0, R4, #0x3C ; '<'
3A38BA:  STR             R0, [SP,#0x68+var_44]
3A38BC:  ADD.W           R0, R4, #0x38 ; '8'
3A38C0:  STR             R0, [SP,#0x68+var_40]
3A38C2:  ADD.W           R0, R4, #0x34 ; '4'
3A38C6:  STR             R0, [SP,#0x68+var_3C]
3A38C8:  ADD.W           R0, R4, #0x30 ; '0'
3A38CC:  STR             R0, [SP,#0x68+var_38]
3A38CE:  ADD.W           R0, R4, #0x2C ; ','
3A38D2:  STR             R0, [SP,#0x68+var_34]
3A38D4:  ADD.W           R0, R4, #0x28 ; '('
3A38D8:  STR             R0, [SP,#0x68+var_30]
3A38DA:  ADD.W           R0, R4, #0x24 ; '$'
3A38DE:  STR             R0, [SP,#0x68+var_2C]
3A38E0:  ADD.W           R0, R4, #0x20 ; ' '
3A38E4:  STR             R0, [SP,#0x68+var_28]
3A38E6:  ADD.W           R0, R4, #0x1C
3A38EA:  STR             R0, [SP,#0x68+var_24]
3A38EC:  ADD.W           R0, R4, #0x18
3A38F0:  STR             R0, [SP,#0x68+var_20]
3A38F2:  ADD.W           R8, R4, #0x14
3A38F6:  LDR             R0, =(gRadioAdverts_ptr - 0x3A3906)
3A38F8:  ADD.W           R9, R4, #0x10
3A38FC:  STR             R2, [SP,#0x68+var_64]
3A38FE:  ADD.W           R2, R4, #0x54 ; 'T'
3A3902:  ADD             R0, PC; gRadioAdverts_ptr
3A3904:  STR             R2, [SP,#0x68+var_60]
3A3906:  ADD.W           R2, R4, #0x50 ; 'P'
3A390A:  ADD.W           R10, R4, #0xC
3A390E:  LDR             R6, [R0]; gRadioAdverts
3A3910:  ADD.W           R11, R4, #8
3A3914:  ADDS            R5, R4, #4
3A3916:  STR             R2, [SP,#0x68+var_5C]
3A3918:  ADD.W           R2, R4, #0x4C ; 'L'
3A391C:  STR             R2, [SP,#0x68+var_54]
3A391E:  ADD.W           R2, R4, #0x48 ; 'H'; int
3A3922:  STR             R2, [SP,#0x68+var_50]
3A3924:  B               loc_3A3956
3A3926:  LDR             R1, [SP,#0x68+var_68]
3A3928:  ADD.W           R12, R1, #1
3A392C:  CMP             R1, #0x27 ; '''
3A392E:  BGT             loc_3A394A
3A3930:  MOVS            R3, #0
3A3932:  LDR             R1, [SP,#0x68+var_58]
3A3934:  LDR.W           R1, [R1,R3,LSL#2]
3A3938:  CMP             R0, R1
3A393A:  BEQ             loc_3A394E
3A393C:  ADDS            R2, R3, #1
3A393E:  CMP             R3, #0x26 ; '&'
3A3940:  MOV.W           R1, #1
3A3944:  MOV             R3, R2
3A3946:  BLE             loc_3A3932
3A3948:  B               loc_3A3950
3A394A:  MOVS            R1, #1
3A394C:  B               loc_3A3950
3A394E:  MOVS            R1, #0
3A3950:  STR.W           R12, [SP,#0x68+var_68]
3A3954:  B               loc_3A3A16
3A3956:  LDRD.W          R0, R1, [R6]; int
3A395A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3A395E:  LDR             R1, [R4]
3A3960:  CMP             R0, R1
3A3962:  BEQ             loc_3A3A14
3A3964:  LDR             R1, [R5]
3A3966:  CMP             R0, R1
3A3968:  BEQ             loc_3A3A14
3A396A:  LDR.W           R1, [R11]
3A396E:  CMP             R0, R1
3A3970:  BEQ             loc_3A3A14
3A3972:  LDR.W           R1, [R10]
3A3976:  CMP             R0, R1
3A3978:  BEQ             loc_3A3A14
3A397A:  LDR.W           R1, [R9]
3A397E:  CMP             R0, R1
3A3980:  BEQ             loc_3A3A14
3A3982:  LDR.W           R1, [R8]
3A3986:  CMP             R0, R1
3A3988:  BEQ             loc_3A3A14
3A398A:  LDR             R1, [SP,#0x68+var_20]
3A398C:  LDR             R1, [R1]
3A398E:  CMP             R0, R1
3A3990:  BEQ             loc_3A3A14
3A3992:  LDR             R1, [SP,#0x68+var_24]
3A3994:  LDR             R1, [R1]
3A3996:  CMP             R0, R1
3A3998:  BEQ             loc_3A3A14
3A399A:  LDR             R1, [SP,#0x68+var_28]
3A399C:  LDR             R1, [R1]
3A399E:  CMP             R0, R1
3A39A0:  BEQ             loc_3A3A14
3A39A2:  LDR             R1, [SP,#0x68+var_2C]
3A39A4:  LDR             R1, [R1]
3A39A6:  CMP             R0, R1
3A39A8:  BEQ             loc_3A3A14
3A39AA:  LDR             R1, [SP,#0x68+var_30]
3A39AC:  LDR             R1, [R1]
3A39AE:  CMP             R0, R1
3A39B0:  BEQ             loc_3A3A14
3A39B2:  LDR             R1, [SP,#0x68+var_34]
3A39B4:  LDR             R1, [R1]
3A39B6:  CMP             R0, R1
3A39B8:  BEQ             loc_3A3A14
3A39BA:  LDR             R1, [SP,#0x68+var_38]
3A39BC:  LDR             R1, [R1]
3A39BE:  CMP             R0, R1
3A39C0:  BEQ             loc_3A3A14
3A39C2:  LDR             R1, [SP,#0x68+var_3C]
3A39C4:  LDR             R1, [R1]
3A39C6:  CMP             R0, R1
3A39C8:  BEQ             loc_3A3A14
3A39CA:  LDR             R1, [SP,#0x68+var_40]
3A39CC:  LDR             R1, [R1]
3A39CE:  CMP             R0, R1
3A39D0:  BEQ             loc_3A3A14
3A39D2:  LDR             R1, [SP,#0x68+var_44]
3A39D4:  LDR             R1, [R1]
3A39D6:  CMP             R0, R1
3A39D8:  BEQ             loc_3A3A14
3A39DA:  LDR             R1, [SP,#0x68+var_48]
3A39DC:  LDR             R1, [R1]
3A39DE:  CMP             R0, R1
3A39E0:  BEQ             loc_3A3A14
3A39E2:  LDR             R1, [SP,#0x68+var_4C]
3A39E4:  LDR             R1, [R1]
3A39E6:  CMP             R0, R1
3A39E8:  BEQ             loc_3A3A14
3A39EA:  LDR             R1, [SP,#0x68+var_50]
3A39EC:  LDR             R1, [R1]
3A39EE:  CMP             R0, R1
3A39F0:  BEQ             loc_3A3A14
3A39F2:  LDR             R1, [SP,#0x68+var_54]
3A39F4:  LDR             R1, [R1]
3A39F6:  CMP             R0, R1
3A39F8:  BEQ             loc_3A3A14
3A39FA:  LDR             R1, [SP,#0x68+var_5C]
3A39FC:  LDR             R1, [R1]
3A39FE:  CMP             R0, R1
3A3A00:  BEQ             loc_3A3A14
3A3A02:  LDR             R1, [SP,#0x68+var_60]
3A3A04:  LDR             R1, [R1]
3A3A06:  CMP             R0, R1
3A3A08:  BEQ             loc_3A3A14
3A3A0A:  LDR             R1, [SP,#0x68+var_64]
3A3A0C:  LDR             R1, [R1]
3A3A0E:  CMP             R0, R1
3A3A10:  BNE.W           loc_3A3926
3A3A14:  MOVS            R1, #0
3A3A16:  SUBW            R2, R0, #0x711
3A3A1A:  CMP             R1, #1
3A3A1C:  BNE             loc_3A3956
3A3A1E:  SUBW            R1, R0, #0x6F6
3A3A22:  CMP             R2, #5
3A3A24:  BCC.W           loc_3A3956
3A3A28:  SUBW            R2, R0, #0x6DA
3A3A2C:  CMP             R1, #5
3A3A2E:  ITT CS
3A3A30:  SUBWCS          R1, R0, #0x6CD
3A3A34:  CMPCS           R2, #0xE
3A3A36:  BCC.W           loc_3A3956
3A3A3A:  SUBW            R2, R0, #0x6AA
3A3A3E:  CMP             R1, #7
3A3A40:  ITT CS
3A3A42:  SUBWCS          R1, R0, #0x614
3A3A46:  CMPCS           R2, #7
3A3A48:  BCC.W           loc_3A3956
3A3A4C:  SUBW            R2, R0, #0x515
3A3A50:  CMP             R1, #0xE
3A3A52:  ITT CS
3A3A54:  SUBCS.W         R1, R0, #0x480
3A3A58:  CMPCS           R2, #0xE
3A3A5A:  BCC.W           loc_3A3956
3A3A5E:  SUBW            R2, R0, #0x45E
3A3A62:  CMP             R1, #6
3A3A64:  ITT CS
3A3A66:  SUBCS.W         R1, R0, #0x3A4
3A3A6A:  CMPCS           R2, #7
3A3A6C:  BCC.W           loc_3A3956
3A3A70:  SUBW            R2, R0, #0x373
3A3A74:  CMP             R1, #7
3A3A76:  ITT CS
3A3A78:  SUBCS.W         R1, R0, #0x350
3A3A7C:  CMPCS           R2, #7
3A3A7E:  BCC.W           loc_3A3956
3A3A82:  SUBW            R2, R0, #0x20F
3A3A86:  CMP             R1, #7
3A3A88:  ITT CS
3A3A8A:  SUBCS.W         R1, R0, #0x126
3A3A8E:  CMPCS           R2, #7
3A3A90:  BCC.W           loc_3A3956
3A3A94:  SUBW            R2, R0, #0x201
3A3A98:  CMP             R1, #7
3A3A9A:  IT CS
3A3A9C:  CMPCS           R2, #7
3A3A9E:  BCC.W           loc_3A3956
3A3AA2:  ADD             SP, SP, #0x4C ; 'L'
3A3AA4:  POP.W           {R8-R11}
3A3AA8:  POP             {R4-R7,PC}
