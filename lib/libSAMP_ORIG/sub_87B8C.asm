; =========================================================
; Game Engine Function: sub_87B8C
; Address            : 0x87B8C - 0x87E02
; =========================================================

87B8C:  PUSH            {R4,R6,R7,LR}
87B8E:  ADD             R7, SP, #8
87B90:  LDR             R1, =(aBass - 0x87B9A); "BASS" ...
87B92:  MOVS            R0, #3; prio
87B94:  LDR             R2, =(aLoadingBassLib - 0x87B9C); "Loading BASS library.." ...
87B96:  ADD             R1, PC; "BASS"
87B98:  ADD             R2, PC; "Loading BASS library.."
87B9A:  BLX             __android_log_print
87B9E:  LDR             R0, =(aDataDataComSam_2 - 0x87BA6); "/data/data/com.sampmobilerp.game/lib/li"... ...
87BA0:  MOVS            R1, #1; mode
87BA2:  ADD             R0, PC; "/data/data/com.sampmobilerp.game/lib/li"...
87BA4:  BLX             dlopen
87BA8:  MOV             R4, R0
87BAA:  CBNZ            R0, loc_87BC0
87BAC:  BLX             dlerror
87BB0:  LDR             R1, =(aBass - 0x87BBC); "BASS" ...
87BB2:  MOV             R3, R0
87BB4:  LDR             R2, =(aS_2 - 0x87BBE); "%s" ...
87BB6:  MOVS            R0, #3; prio
87BB8:  ADD             R1, PC; "BASS"
87BBA:  ADD             R2, PC; "%s" ; fmt
87BBC:  BLX             __android_log_print
87BC0:  LDR             R1, =(aBassInit - 0x87BC8); "BASS_Init" ...
87BC2:  MOV             R0, R4; handle
87BC4:  ADD             R1, PC; "BASS_Init"
87BC6:  BLX             dlsym
87BCA:  LDR             R2, =(off_1ABED8 - 0x87BD2)
87BCC:  LDR             R1, =(aBassFree - 0x87BD4); "BASS_Free" ...
87BCE:  ADD             R2, PC; off_1ABED8
87BD0:  ADD             R1, PC; "BASS_Free"
87BD2:  STR             R0, [R2]
87BD4:  MOV             R0, R4; handle
87BD6:  BLX             dlsym
87BDA:  LDR             R2, =(off_1ABEDC - 0x87BE2)
87BDC:  LDR             R1, =(aBassSetconfigp - 0x87BE4); "BASS_SetConfigPtr" ...
87BDE:  ADD             R2, PC; off_1ABEDC
87BE0:  ADD             R1, PC; "BASS_SetConfigPtr"
87BE2:  STR             R0, [R2]
87BE4:  MOV             R0, R4; handle
87BE6:  BLX             dlsym
87BEA:  LDR             R2, =(off_1ABEE0 - 0x87BF2)
87BEC:  LDR             R1, =(aBassSetconfig - 0x87BF4); "BASS_SetConfig" ...
87BEE:  ADD             R2, PC; off_1ABEE0
87BF0:  ADD             R1, PC; "BASS_SetConfig"
87BF2:  STR             R0, [R2]
87BF4:  MOV             R0, R4; handle
87BF6:  BLX             dlsym
87BFA:  LDR             R2, =(off_1ABEE4 - 0x87C02)
87BFC:  LDR             R1, =(aBassChannelsto - 0x87C04); "BASS_ChannelStop" ...
87BFE:  ADD             R2, PC; off_1ABEE4
87C00:  ADD             R1, PC; "BASS_ChannelStop"
87C02:  STR             R0, [R2]
87C04:  MOV             R0, R4; handle
87C06:  BLX             dlsym
87C0A:  LDR             R2, =(off_1ABEE8 - 0x87C12)
87C0C:  LDR             R1, =(aBassStreamcrea - 0x87C14); "BASS_StreamCreateURL" ...
87C0E:  ADD             R2, PC; off_1ABEE8
87C10:  ADD             R1, PC; "BASS_StreamCreateURL"
87C12:  STR             R0, [R2]
87C14:  MOV             R0, R4; handle
87C16:  BLX             dlsym
87C1A:  LDR             R2, =(off_1ABEEC - 0x87C22)
87C1C:  LDR             R1, =(aBassStreamcrea_0 - 0x87C24); "BASS_StreamCreate" ...
87C1E:  ADD             R2, PC; off_1ABEEC
87C20:  ADD             R1, PC; "BASS_StreamCreate"
87C22:  STR             R0, [R2]
87C24:  MOV             R0, R4; handle
87C26:  BLX             dlsym
87C2A:  LDR             R2, =(off_1ABEF0 - 0x87C32)
87C2C:  LDR             R1, =(aBassChannelpla - 0x87C34); "BASS_ChannelPlay" ...
87C2E:  ADD             R2, PC; off_1ABEF0
87C30:  ADD             R1, PC; "BASS_ChannelPlay"
87C32:  STR             R0, [R2]
87C34:  MOV             R0, R4; handle
87C36:  BLX             dlsym
87C3A:  LDR             R2, =(off_1ABEF4 - 0x87C42)
87C3C:  LDR             R1, =(aBassChannelpau - 0x87C44); "BASS_ChannelPause" ...
87C3E:  ADD             R2, PC; off_1ABEF4
87C40:  ADD             R1, PC; "BASS_ChannelPause"
87C42:  STR             R0, [R2]
87C44:  MOV             R0, R4; handle
87C46:  BLX             dlsym
87C4A:  LDR             R2, =(off_1ABEF8 - 0x87C52)
87C4C:  LDR             R1, =(aBassChannelget - 0x87C54); "BASS_ChannelGetTags" ...
87C4E:  ADD             R2, PC; off_1ABEF8
87C50:  ADD             R1, PC; "BASS_ChannelGetTags"
87C52:  STR             R0, [R2]
87C54:  MOV             R0, R4; handle
87C56:  BLX             dlsym
87C5A:  LDR             R2, =(dword_1ABEFC - 0x87C62)
87C5C:  LDR             R1, =(aBassChannelset - 0x87C64); "BASS_ChannelSetSync" ...
87C5E:  ADD             R2, PC; dword_1ABEFC
87C60:  ADD             R1, PC; "BASS_ChannelSetSync"
87C62:  STR             R0, [R2]
87C64:  MOV             R0, R4; handle
87C66:  BLX             dlsym
87C6A:  LDR             R2, =(dword_1ABF00 - 0x87C72)
87C6C:  LDR             R1, =(aBassStreamgetf - 0x87C74); "BASS_StreamGetFilePosition" ...
87C6E:  ADD             R2, PC; dword_1ABF00
87C70:  ADD             R1, PC; "BASS_StreamGetFilePosition"
87C72:  STR             R0, [R2]
87C74:  MOV             R0, R4; handle
87C76:  BLX             dlsym
87C7A:  LDR             R2, =(dword_1ABF04 - 0x87C82)
87C7C:  LDR             R1, =(aBassStreamfree - 0x87C84); "BASS_StreamFree" ...
87C7E:  ADD             R2, PC; dword_1ABF04
87C80:  ADD             R1, PC; "BASS_StreamFree"
87C82:  STR             R0, [R2]
87C84:  MOV             R0, R4; handle
87C86:  BLX             dlsym
87C8A:  LDR             R2, =(off_1ABF08 - 0x87C92)
87C8C:  LDR             R1, =(aBassErrorgetco - 0x87C94); "BASS_ErrorGetCode" ...
87C8E:  ADD             R2, PC; off_1ABF08
87C90:  ADD             R1, PC; "BASS_ErrorGetCode"
87C92:  STR             R0, [R2]
87C94:  MOV             R0, R4; handle
87C96:  BLX             dlsym
87C9A:  LDR             R2, =(off_1ABF0C - 0x87CA2)
87C9C:  LDR             R1, =(aBassSet3dfacto - 0x87CA4); "BASS_Set3DFactors" ...
87C9E:  ADD             R2, PC; off_1ABF0C
87CA0:  ADD             R1, PC; "BASS_Set3DFactors"
87CA2:  STR             R0, [R2]
87CA4:  MOV             R0, R4; handle
87CA6:  BLX             dlsym
87CAA:  LDR             R2, =(off_1ABF10 - 0x87CB2)
87CAC:  LDR             R1, =(aBassSet3dposit - 0x87CB4); "BASS_Set3DPosition" ...
87CAE:  ADD             R2, PC; off_1ABF10
87CB0:  ADD             R1, PC; "BASS_Set3DPosition"
87CB2:  STR             R0, [R2]
87CB4:  MOV             R0, R4; handle
87CB6:  BLX             dlsym
87CBA:  LDR             R2, =(off_1ABF14 - 0x87CC2)
87CBC:  LDR             R1, =(aBassApply3d - 0x87CC4); "BASS_Apply3D" ...
87CBE:  ADD             R2, PC; off_1ABF14
87CC0:  ADD             R1, PC; "BASS_Apply3D"
87CC2:  STR             R0, [R2]
87CC4:  MOV             R0, R4; handle
87CC6:  BLX             dlsym
87CCA:  LDR             R2, =(off_1ABF18 - 0x87CD2)
87CCC:  LDR             R1, =(aBassChannelset_0 - 0x87CD4); "BASS_ChannelSetFX" ...
87CCE:  ADD             R2, PC; off_1ABF18
87CD0:  ADD             R1, PC; "BASS_ChannelSetFX"
87CD2:  STR             R0, [R2]
87CD4:  MOV             R0, R4; handle
87CD6:  BLX             dlsym
87CDA:  LDR             R2, =(off_1ABF1C - 0x87CE2)
87CDC:  LDR             R1, =(aBassChannelrem - 0x87CE4); "BASS_ChannelRemoveFX" ...
87CDE:  ADD             R2, PC; off_1ABF1C
87CE0:  ADD             R1, PC; "BASS_ChannelRemoveFX"
87CE2:  STR             R0, [R2]
87CE4:  MOV             R0, R4; handle
87CE6:  BLX             dlsym
87CEA:  LDR             R2, =(off_1ABF20 - 0x87CF2)
87CEC:  LDR             R1, =(aBassFxsetparam - 0x87CF4); "BASS_FXSetParameters" ...
87CEE:  ADD             R2, PC; off_1ABF20
87CF0:  ADD             R1, PC; "BASS_FXSetParameters"
87CF2:  STR             R0, [R2]
87CF4:  MOV             R0, R4; handle
87CF6:  BLX             dlsym
87CFA:  LDR             R2, =(off_1ABF24 - 0x87D02)
87CFC:  LDR             R1, =(aBassIsstarted - 0x87D04); "BASS_IsStarted" ...
87CFE:  ADD             R2, PC; off_1ABF24
87D00:  ADD             R1, PC; "BASS_IsStarted"
87D02:  STR             R0, [R2]
87D04:  MOV             R0, R4; handle
87D06:  BLX             dlsym
87D0A:  LDR             R2, =(off_1ABF28 - 0x87D12)
87D0C:  LDR             R1, =(aBassRecordgetd - 0x87D14); "BASS_RecordGetDeviceInfo" ...
87D0E:  ADD             R2, PC; off_1ABF28
87D10:  ADD             R1, PC; "BASS_RecordGetDeviceInfo"
87D12:  STR             R0, [R2]
87D14:  MOV             R0, R4; handle
87D16:  BLX             dlsym
87D1A:  LDR             R2, =(off_1ABF2C - 0x87D22)
87D1C:  LDR             R1, =(aBassRecordinit - 0x87D24); "BASS_RecordInit" ...
87D1E:  ADD             R2, PC; off_1ABF2C
87D20:  ADD             R1, PC; "BASS_RecordInit"
87D22:  STR             R0, [R2]
87D24:  MOV             R0, R4; handle
87D26:  BLX             dlsym
87D2A:  LDR             R2, =(dword_1ABF30 - 0x87D32)
87D2C:  LDR             R1, =(aBassRecordgetd_0 - 0x87D34); "BASS_RecordGetDevice" ...
87D2E:  ADD             R2, PC; dword_1ABF30
87D30:  ADD             R1, PC; "BASS_RecordGetDevice"
87D32:  STR             R0, [R2]
87D34:  MOV             R0, R4; handle
87D36:  BLX             dlsym
87D3A:  LDR             R2, =(off_1ABF34 - 0x87D42)
87D3C:  LDR             R1, =(aBassRecordfree - 0x87D44); "BASS_RecordFree" ...
87D3E:  ADD             R2, PC; off_1ABF34
87D40:  ADD             R1, PC; "BASS_RecordFree"
87D42:  STR             R0, [R2]
87D44:  MOV             R0, R4; handle
87D46:  BLX             dlsym
87D4A:  LDR             R2, =(off_1ABF38 - 0x87D52)
87D4C:  LDR             R1, =(aBassRecordstar - 0x87D54); "BASS_RecordStart" ...
87D4E:  ADD             R2, PC; off_1ABF38
87D50:  ADD             R1, PC; "BASS_RecordStart"
87D52:  STR             R0, [R2]
87D54:  MOV             R0, R4; handle
87D56:  BLX             dlsym
87D5A:  LDR             R2, =(off_1ABF3C - 0x87D62)
87D5C:  LDR             R1, =(aBassChannelset_1 - 0x87D64); "BASS_ChannelSetAttribute" ...
87D5E:  ADD             R2, PC; off_1ABF3C
87D60:  ADD             R1, PC; "BASS_ChannelSetAttribute"
87D62:  STR             R0, [R2]
87D64:  MOV             R0, R4; handle
87D66:  BLX             dlsym
87D6A:  LDR             R2, =(off_1ABF40 - 0x87D72)
87D6C:  LDR             R1, =(aBassChannelget_0 - 0x87D74); "BASS_ChannelGetData" ...
87D6E:  ADD             R2, PC; off_1ABF40
87D70:  ADD             R1, PC; "BASS_ChannelGetData"
87D72:  STR             R0, [R2]
87D74:  MOV             R0, R4; handle
87D76:  BLX             dlsym
87D7A:  LDR             R2, =(off_1ABF44 - 0x87D82)
87D7C:  LDR             R1, =(aBassRecordseti - 0x87D84); "BASS_RecordSetInput" ...
87D7E:  ADD             R2, PC; off_1ABF44
87D80:  ADD             R1, PC; "BASS_RecordSetInput"
87D82:  STR             R0, [R2]
87D84:  MOV             R0, R4; handle
87D86:  BLX             dlsym
87D8A:  LDR             R2, =(off_1ABF48 - 0x87D92)
87D8C:  LDR             R1, =(aBassStreamputd - 0x87D94); "BASS_StreamPutData" ...
87D8E:  ADD             R2, PC; off_1ABF48
87D90:  ADD             R1, PC; "BASS_StreamPutData"
87D92:  STR             R0, [R2]
87D94:  MOV             R0, R4; handle
87D96:  BLX             dlsym
87D9A:  LDR             R2, =(off_1ABF4C - 0x87DA2)
87D9C:  LDR             R1, =(aBassChannelset_2 - 0x87DA4); "BASS_ChannelSetPosition" ...
87D9E:  ADD             R2, PC; off_1ABF4C
87DA0:  ADD             R1, PC; "BASS_ChannelSetPosition"
87DA2:  STR             R0, [R2]
87DA4:  MOV             R0, R4; handle
87DA6:  BLX             dlsym
87DAA:  LDR             R2, =(off_1ABF50 - 0x87DB2)
87DAC:  LDR             R1, =(aBassChannelisa - 0x87DB4); "BASS_ChannelIsActive" ...
87DAE:  ADD             R2, PC; off_1ABF50
87DB0:  ADD             R1, PC; "BASS_ChannelIsActive"
87DB2:  STR             R0, [R2]
87DB4:  MOV             R0, R4; handle
87DB6:  BLX             dlsym
87DBA:  LDR             R2, =(off_1ABF54 - 0x87DC2)
87DBC:  LDR             R1, =(aBassChannelsli - 0x87DC4); "BASS_ChannelSlideAttribute" ...
87DBE:  ADD             R2, PC; off_1ABF54
87DC0:  ADD             R1, PC; "BASS_ChannelSlideAttribute"
87DC2:  STR             R0, [R2]
87DC4:  MOV             R0, R4; handle
87DC6:  BLX             dlsym
87DCA:  LDR             R2, =(off_1ABF58 - 0x87DD2)
87DCC:  LDR             R1, =(aBassChannelset_3 - 0x87DD4); "BASS_ChannelSet3DAttributes" ...
87DCE:  ADD             R2, PC; off_1ABF58
87DD0:  ADD             R1, PC; "BASS_ChannelSet3DAttributes"
87DD2:  STR             R0, [R2]
87DD4:  MOV             R0, R4; handle
87DD6:  BLX             dlsym
87DDA:  LDR             R2, =(off_1ABF5C - 0x87DE2)
87DDC:  LDR             R1, =(aBassChannelset_4 - 0x87DE4); "BASS_ChannelSet3DPosition" ...
87DDE:  ADD             R2, PC; off_1ABF5C
87DE0:  ADD             R1, PC; "BASS_ChannelSet3DPosition"
87DE2:  STR             R0, [R2]
87DE4:  MOV             R0, R4; handle
87DE6:  BLX             dlsym
87DEA:  LDR             R2, =(off_1ABF60 - 0x87DF2)
87DEC:  LDR             R1, =(aBassSetvolume - 0x87DF4); "BASS_SetVolume" ...
87DEE:  ADD             R2, PC; off_1ABF60
87DF0:  ADD             R1, PC; "BASS_SetVolume"
87DF2:  STR             R0, [R2]
87DF4:  MOV             R0, R4; handle
87DF6:  BLX             dlsym
87DFA:  LDR             R1, =(dword_1ABF64 - 0x87E00)
87DFC:  ADD             R1, PC; dword_1ABF64
87DFE:  STR             R0, [R1]
87E00:  POP             {R4,R6,R7,PC}
