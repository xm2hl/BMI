
import SwiftUI

struct ContentView: View {
    @State var backgroundcolor: Color = Color.white
    @State var mySlider: Double = 2.5
    @State var mySlider1: Double = 500
    @State var myBMI: Double = 0
    var body: some View {
        ZStack{
            backgroundcolor
                .edgesIgnoringSafeArea(.all)
            VStack {
               Text("احتساب BMI")
                    .bold()
                    .font(.title3)
                    .underline()
                    .padding(.bottom, 60)
                Text("الطول")
                     .bold()
                     .font(.title3)
                     .padding(.leading, 250)
                Slider(value: $mySlider, in: 0...2.5)
                Text("الطول \(String(format: "%.2f", mySlider))")
                     .bold()
                     .font(.title3)
                     .padding(.trailing, 230)
                Text("الوزن")
                     .bold()
                     .font(.title3)
                     .padding(.leading, 250)
                Slider(value: $mySlider1, in: 0...500, step: 0.1)
                Text("الوزن \(String(format: "%.1f", mySlider1))")
                     .bold()
                     .font(.title3)
                     .padding(.trailing, 230)
                     .padding(.bottom, 300)
                Text("BMI   \(String(format: "%.1f", myBMI))")
                    .bold()
                    .font(.title3)
                    .padding()
                Button("أحسب") {
                    myBMI = mySlider1 / (mySlider * mySlider)
                    if myBMI >= 30 {
                        backgroundcolor = Color.red.opacity(0.5)
                    } else if myBMI >= 18 {
                        backgroundcolor = Color.green.opacity(0.5)
                    } else {
                        backgroundcolor = Color.yellow.opacity(0.5)
                    }
                }
                .font(.largeTitle)
                .foregroundColor(Color.green)
                .frame(width: 100, height: 70)
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
