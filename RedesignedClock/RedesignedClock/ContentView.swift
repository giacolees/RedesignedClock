//
//  ContentView.swift
//  RedesignedClock
//
//  Created by Giacomo Lisita on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    var progressHours:Double { Double(toInt(cas: 0,date: date))/12
    }
    var progressMinutes:Double { Double(toInt(cas: 1, date: date))/60
    }
    var progressSeconds:Double{ Double(toInt(cas: 2, date: date))/60
    }
    @State var showCircle =  false
    let ringDiameter = 330.0
    let timerz = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    private var rotationAngleHours: Angle {
        return Angle(degrees: (360.0 * progressHours))
    }
    private var rotationAngleMinutes: Angle {
        return Angle(degrees: (360.0 * progressMinutes))
    }
    private var rotationAngleSeconds: Angle {
        return Angle(degrees: (360.0 * progressSeconds))
    }
        
    var body: some View {
        VStack{
            ZStack {
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    VStack{
                        Text(date,format:.dateTime.hour(.defaultDigits(amPM: .omitted)).minute().second()).font(.system(size: 60, weight: .ultraLight, design: .default)).colorInvert()
                        Text(date, format:.dateTime.timeZone().day().month() ).font(.system(size: 18, weight: .regular, design: .default)).colorInvert()
                    }.padding(.vertical,50)
                    ZStack {
                        Circle()
                            .stroke(Color(.gray), lineWidth: 20.0)
                        Circle()
                            .trim(from: 0, to: CGFloat(progressHours))
                            .stroke(Color(.darkGray),
                                    style: StrokeStyle(lineWidth: 20.0, lineCap: .round)
                            )
                            .rotationEffect(Angle(degrees: -90))
                        Circle()
                            .fill(Color.white)
                            .shadow(radius: 3)
                            .frame(width: 30, height: 30)
                            .offset(y: -ringDiameter / 2.0)
                            .rotationEffect(rotationAngleHours)
                        ZStack{
                            ZStack{
                                ZStack{
                                    Circle()
                                        .strokeBorder(toInt(cas: 0, date: date) == 0 ? .white : .black, lineWidth: 5)
                                        .frame(width: 20, height: 20)
                                        .offset(y: (-ringDiameter / 2.0)+25)
                                    Circle()
                                        .fill(Color.blue)
                                        .frame(width: 13, height: 13)
                                        .offset(y: (-ringDiameter / 2.0)+25)
                                }
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .rotationEffect(Angle(degrees: -30))
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .rotationEffect(Angle(degrees: -60))
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .rotationEffect(Angle(degrees: -120))
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                .rotationEffect(Angle(degrees: -150))
                                
                            }
                            ZStack{
                                Circle()
                                    .strokeBorder(toInt(cas: 0, date: date) == 9 ? .white : .black, lineWidth: 5)
                                    .frame(width: 20, height: 20)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .frame(width: 13, height: 13)
                                    .rotationEffect(Angle(degrees: -90))
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 13, height: 13)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .rotationEffect(Angle(degrees: -90))
                                Circle()
                                    .strokeBorder(toInt(cas: 0, date: date) == 3 ? .white : .black, lineWidth: 5)
                                    .frame(width: 20, height: 20)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .frame(width: 13, height: 13)
                                    .rotationEffect(Angle(degrees: 90))
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 13, height: 13)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                .rotationEffect(Angle(degrees: 90))
                                Circle()
                                    .strokeBorder(toInt(cas: 0, date: date) == 6 ? .white : .black
                                                  , lineWidth: 5)
                                    .frame(width: 20, height: 20)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .frame(width: 13, height: 13)
                                    .rotationEffect(Angle(degrees: 180))
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 13, height: 13)
                                    .offset(y: (-ringDiameter / 2.0)+25)
                                    .rotationEffect(Angle(degrees: 180))
                                
                            }
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 10, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+25)
                                .rotationEffect(Angle(degrees: 30))
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 10, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+25)
                                .rotationEffect(Angle(degrees: 60))
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 10, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+25)
                                .rotationEffect(Angle(degrees: 120))
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 10, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+25)
                                .rotationEffect(Angle(degrees: 150))
                        }
                        ZStack {
                            Circle()
                                .stroke(Color(.gray), lineWidth: 20.0)
                            Circle()
                                .trim(from: 0, to: CGFloat(progressMinutes))
                                .stroke(Color(.darkGray),
                                        style: StrokeStyle(lineWidth: 20.0, lineCap: .round)
                                )
                                .rotationEffect(Angle(degrees: -90))
                            Circle()
                                .fill(Color.white)
                                .shadow(radius: 3)
                                .frame(width: 30, height: 30)
                                .offset(y: -(ringDiameter-125) / 2.0)
                                .rotationEffect(rotationAngleMinutes)
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 13, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+90)
                            
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 13, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+90)
                                .rotationEffect(Angle(degrees: -90))
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 13, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+90)
                                .rotationEffect(Angle(degrees: 90))
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 13, height: 13)
                                .offset(y: (-ringDiameter / 2.0)+90)
                                .rotationEffect(Angle(degrees: 180))
                            ZStack{
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+90)
                                    .rotationEffect(Angle(degrees: 45))
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+90)
                                    .rotationEffect(Angle(degrees: 135))
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+90)
                                    .rotationEffect(Angle(degrees: -45))
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 10, height: 10)
                                    .offset(y: (-ringDiameter / 2.0)+90)
                                    .rotationEffect(Angle(degrees: -135))
                            }
                        }
                        .frame(width: ringDiameter-125, height: ringDiameter-125)
                        if showCircle{
                        ZStack {
                            Circle()
                                .stroke(Color(.gray), lineWidth: 20.0)
                            Circle()
                                .trim(from: 0, to: CGFloat(progressSeconds))
                                .stroke(Color(.darkGray),
                                        style: StrokeStyle(lineWidth: 20.0, lineCap: .round)
                                )
                                .rotationEffect(Angle(degrees: -90))
                            Circle()
                                .fill(Color.white)
                                .shadow(radius: 3)
                                .frame(width: 30, height: 30)
                                .offset(y: -(ringDiameter-250) / 2.0)
                                .rotationEffect(rotationAngleSeconds)
                        }
                        .frame(width: ringDiameter-250, height: ringDiameter-250)
                        }
                    }
                    .frame(width: ringDiameter, height: ringDiameter).padding(.vertical, 30)
                    
                    Button{
                        if showCircle{
                            showCircle.toggle()
                        }
                        else{
                            showCircle.toggle()
                        }
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 100).fill(Color.blue).frame(width: 80, height: 30).shadow(radius: 4)
                        }
                    }
                    Spacer()
                }
            }
            
        }.onReceive(timerz){
            timer in date = Date()
        }
        .onAppear{
            date = Date()
        }
    }
}

func toInt(cas:Int, date:Date) -> Int{
    // Create Date Formatter
    let dateFormatter = DateFormatter()

    // Set Date Format
    dateFormatter.dateFormat = "HH:mm:ss"

    var timez = String()
    // Convert Date to String
    timez = dateFormatter.string(from: date)

    let components = timez.split{ $0 == ":" }.map{ (x) -> Int in return Int(String(x))! }
    var o = 0
    
    switch cas{
    case 0:
       o = components[0]
    case 1:
       o = components[1]
    case 2:
       o = components[2]
    default:
       o = 0
    }
    
    if o == 12{
        o=0
    }
    
    return o
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
