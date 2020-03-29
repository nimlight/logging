type
  Buffer*[N: static[int]] = object
    data: array[N, char]

  DoubleBuffer*[N: static[int]] = object
    dataIn: Buffer[N]
    dataOut: Buffer[N]

var d = DoubleBuffer[12]()
d.dataIn.data[1] = 'b'
d.dataOut.data[2] = 'c'
swap(d.dataIn, d.dataOut)
echo d