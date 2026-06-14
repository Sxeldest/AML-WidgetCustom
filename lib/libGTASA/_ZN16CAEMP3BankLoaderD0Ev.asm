; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoaderD0Ev
; Address            : 0x27DC68 - 0x27DC78
; =========================================================

27DC68:  PUSH            {R7,LR}
27DC6A:  MOV             R7, SP
27DC6C:  BLX             j__ZN16CAEMP3BankLoaderD2Ev; CAEMP3BankLoader::~CAEMP3BankLoader()
27DC70:  POP.W           {R7,LR}
27DC74:  B.W             j__ZdlPv; operator delete(void *)
