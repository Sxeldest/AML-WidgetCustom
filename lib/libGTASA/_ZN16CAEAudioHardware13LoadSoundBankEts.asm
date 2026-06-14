; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware13LoadSoundBankEts
; Address            : 0x392BEA - 0x392BFA
; =========================================================

392BEA:  LDRB            R3, [R0,#1]
392BEC:  CMP             R3, #0
392BEE:  ITT EQ
392BF0:  LDREQ.W         R0, [R0,#0xB78]; this
392BF4:  BEQ.W           j_j__ZN16CAEMP3BankLoader13LoadSoundBankEts; j_CAEMP3BankLoader::LoadSoundBank(ushort,short)
392BF8:  BX              LR
