; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo20DeleteCollisionModelEv
; Address            : 0x38500A - 0x38502A
; =========================================================

38500A:  PUSH            {R4,R6,R7,LR}
38500C:  ADD             R7, SP, #8
38500E:  MOV             R4, R0
385010:  LDR             R0, [R4,#0x2C]; this
385012:  CBZ             R0, loc_385024
385014:  LDRB.W          R1, [R4,#0x28]
385018:  LSLS            R1, R1, #0x18
38501A:  BPL             loc_385024
38501C:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
385020:  BLX             j__ZN9CColModeldlEPv; CColModel::operator delete(void *)
385024:  MOVS            R0, #0
385026:  STR             R0, [R4,#0x2C]
385028:  POP             {R4,R6,R7,PC}
