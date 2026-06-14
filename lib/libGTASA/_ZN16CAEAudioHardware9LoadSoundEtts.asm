; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware9LoadSoundEtts
; Address            : 0x392CC8 - 0x392CDC
; =========================================================

392CC8:  LDRB.W          R12, [R0,#1]
392CCC:  CMP.W           R12, #0
392CD0:  ITT EQ
392CD2:  LDREQ.W         R0, [R0,#0xB78]; this
392CD6:  BEQ.W           j_j__ZN16CAEMP3BankLoader9LoadSoundEtts; j_CAEMP3BankLoader::LoadSound(ushort,ushort,short)
392CDA:  BX              LR
