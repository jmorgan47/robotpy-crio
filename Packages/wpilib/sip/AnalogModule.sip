// This file is part of the RobotPy wpilib package.
//
// Copyright (c) 2010 Peter Johnson
// 
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//

class AnalogModule: Module
{
%TypeHeaderCode
#include <WPILib/AnalogModule.h>
%End

public:
	enum { kTimebase = 40000000 };
	enum { kDefaultOversampleBits = 0 };
	enum { kDefaultAverageBits = 7 };
	enum { kDefaultSampleRate = 50000 };

	void SetSampleRate(float samplesPerSecond);
	float GetSampleRate();
	void SetAverageBits(UINT32 channel, UINT32 bits);
	UINT32 GetAverageBits(UINT32 channel);
	void SetOversampleBits(UINT32 channel, UINT32 bits);
	UINT32 GetOversampleBits(UINT32 channel);
	INT16 GetValue(UINT32 channel);
	INT32 GetAverageValue(UINT32 channel);
	float GetAverageVoltage(UINT32 channel);
	float GetVoltage(UINT32 channel);
	UINT32 GetLSBWeight(UINT32 channel);
	INT32 GetOffset(UINT32 channel);
	INT32 VoltsToValue(INT32 channel, float voltage);

	static UINT32 SlotToIndex(UINT32 slot);
	static AnalogModule* GetInstance(UINT32 slot);

protected:
	explicit AnalogModule(UINT32 slot);
	virtual ~AnalogModule();
};