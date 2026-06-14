; =========================================================
; Game Engine Function: sub_1A91B8
; Address            : 0x1A91B8 - 0x1A9334
; =========================================================

1A91B8:  PUSH            {R4,R6,R7,LR}
1A91BA:  ADD             R7, SP, #8
1A91BC:  LDR             R0, =(_ZN6CGlass11aGlassPanesE_ptr - 0x1A91C2)
1A91BE:  ADD             R0, PC; _ZN6CGlass11aGlassPanesE_ptr
1A91C0:  LDR             R4, [R0]; CGlass::aGlassPanes ...
1A91C2:  ADD.W           R0, R4, #0x1340; this
1A91C6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A91CA:  MOVW            R0, #0x12D0
1A91CE:  ADD             R0, R4; this
1A91D0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A91D4:  ADD.W           R0, R4, #0x1260; this
1A91D8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A91DC:  MOVW            R0, #0x11F0
1A91E0:  ADD             R0, R4; this
1A91E2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A91E6:  ADD.W           R0, R4, #0x1180; this
1A91EA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A91EE:  MOVW            R0, #0x1110
1A91F2:  ADD             R0, R4; this
1A91F4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A91F8:  ADD.W           R0, R4, #0x10A0; this
1A91FC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9200:  MOVW            R0, #0x1030
1A9204:  ADD             R0, R4; this
1A9206:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A920A:  ADD.W           R0, R4, #0xFC0; this
1A920E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9212:  ADD.W           R0, R4, #0xF50; this
1A9216:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A921A:  ADD.W           R0, R4, #0xEE0; this
1A921E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9222:  ADD.W           R0, R4, #0xE70; this
1A9226:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A922A:  ADD.W           R0, R4, #0xE00; this
1A922E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9232:  ADD.W           R0, R4, #0xD90; this
1A9236:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A923A:  ADD.W           R0, R4, #0xD20; this
1A923E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9242:  ADD.W           R0, R4, #0xCB0; this
1A9246:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A924A:  ADD.W           R0, R4, #0xC40; this
1A924E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9252:  ADD.W           R0, R4, #0xBD0; this
1A9256:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A925A:  ADD.W           R0, R4, #0xB60; this
1A925E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9262:  ADD.W           R0, R4, #0xAF0; this
1A9266:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A926A:  ADD.W           R0, R4, #0xA80; this
1A926E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9272:  ADD.W           R0, R4, #0xA10; this
1A9276:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A927A:  ADD.W           R0, R4, #0x9A0; this
1A927E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9282:  ADD.W           R0, R4, #0x930; this
1A9286:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A928A:  ADD.W           R0, R4, #0x8C0; this
1A928E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9292:  ADD.W           R0, R4, #0x850; this
1A9296:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A929A:  ADD.W           R0, R4, #0x7E0; this
1A929E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92A2:  ADD.W           R0, R4, #0x770; this
1A92A6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92AA:  ADD.W           R0, R4, #0x700; this
1A92AE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92B2:  ADD.W           R0, R4, #0x690; this
1A92B6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92BA:  ADD.W           R0, R4, #0x620; this
1A92BE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92C2:  ADD.W           R0, R4, #0x5B0; this
1A92C6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92CA:  ADD.W           R0, R4, #0x540; this
1A92CE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92D2:  ADD.W           R0, R4, #0x4D0; this
1A92D6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92DA:  ADD.W           R0, R4, #0x460; this
1A92DE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92E2:  ADD.W           R0, R4, #0x3F0; this
1A92E6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92EA:  ADD.W           R0, R4, #0x380; this
1A92EE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92F2:  ADD.W           R0, R4, #0x310; this
1A92F6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A92FA:  ADD.W           R0, R4, #0x2A0; this
1A92FE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9302:  ADD.W           R0, R4, #0x230; this
1A9306:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A930A:  ADD.W           R0, R4, #0x1C0; this
1A930E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9312:  ADD.W           R0, R4, #0x150; this
1A9316:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A931A:  ADD.W           R0, R4, #0xE0; this
1A931E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A9322:  ADD.W           R0, R4, #0x70 ; 'p'; this
1A9326:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A932A:  MOV             R0, R4; this
1A932C:  POP.W           {R4,R6,R7,LR}
1A9330:  B.W             j_j__ZN7CMatrixD2Ev; j_CMatrix::~CMatrix()
