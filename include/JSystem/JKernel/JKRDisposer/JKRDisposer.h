#ifndef __JKRDISPOSER_H__
#define __JKRDISPOSER_H__

#include "dolphin/types.h"
#include "JSystem/JSupport/JSUList/JSUList.h"

class JKRHeap;
class JKRDisposer {
  public:
    JKRDisposer();
    virtual ~JKRDisposer();

  public:
    JKRHeap* mHeap;
    JSULink<JKRDisposer> mLink;
};

#endif
