; =========================================================
; Game Engine Function: _ZN10CStreaming18LoadInitialWeaponsEv
; Address            : 0x2D6B7E - 0x2D6BA4
; =========================================================

2D6B7E:  PUSH            {R7,LR}
2D6B80:  MOV             R7, SP
2D6B82:  MOV.W           R0, #(elf_hash_bucket+0x5E); this
2D6B86:  MOVS            R1, #2; int
2D6B88:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D6B8C:  MOV.W           R0, #(elf_hash_bucket+0x52); this
2D6B90:  MOVS            R1, #2; int
2D6B92:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D6B96:  MOVW            R0, #(elf_hash_bucket+0x5D); this
2D6B9A:  MOVS            R1, #2; int
2D6B9C:  POP.W           {R7,LR}
2D6BA0:  B.W             _ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
