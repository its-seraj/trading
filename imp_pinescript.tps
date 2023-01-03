// Define the input parameters
input fastLength = 12;
input slowLength = 26;
input signalLength = 9;
input overBought = 70;
input overSold = 30;
input price = hlc3;
input period = 14;
input kPeriod = 14;
input dPeriod = 3;

// Calculate the MACD, Bollinger Bands, RSI, Stochastic Oscillator, and MFI
plot macd = MovingAverage(close, fastLength) - MovingAverage(close, slowLength);
plot signal = MovingAverage(macd, signalLength);
plot bbUpper = BollingerBands(close, period, 2).upper;
plot bbLower = BollingerBands(close, period, 2).lower;
plot rsi = RSI(close, period);
plot stoch = Stochastic(kPeriod, dPeriod).stoch;
plot mfi = MFI(period);

// Set the styles for the plots
macd.setStyle(Curve.MEDIUM_DASH);
signal.setStyle(Curve.MEDIUM_DASH);
bbUpper.setStyle(Curve.SHORT_DASH);
bbLower.setStyle(Curve.SHORT_DASH);
rsi.setStyle(Curve.SHORT_DASH);
stoch.setStyle(Curve.SHORT_DASH);
mfi.setStyle(Curve.SHORT_DASH);

// Set the colors for the plots
macd.setColor(Color.CYAN);
signal.setColor(Color.CYAN);
bbUpper.setColor(Color.ORANGE);
bbLower.setColor(Color.ORANGE);
rsi.setColor(Color.GREEN);
stoch.setColor(Color.PINK);
mfi.setColor(Color.YELLOW);

// Set the plot titles
macd.setTitle("MACD");
signal.setTitle("Signal");
bbUpper.setTitle("BB Upper");
bbLower.setTitle("BB Lower");
rsi.setTitle("RSI");
stoch.setTitle("Stochastic");
mfi.setTitle("MFI");

// Set the plot thickness
macd.setThickness(2);
signal.setThickness(2);
bbUpper.setThickness(2);
bbLower.setThickness(2);
rsi.setThickness(2);
stoch.setThickness(2);
mfi.setThickness(2);

// Add the plots to the chart
plot(macd);
plot(signal);
plot(bbUpper);
plot(bbLower);
plot(rsi);
plot(stoch);
plot(mfi);

// Add the overbought and oversold lines
plot overBoughtLine = overBought;
plot overSoldLine = overSold;
overBoughtLine.setStyle(Curve.SHORT_DASH);
overSoldLine.setStyle(Curve.SHORT
