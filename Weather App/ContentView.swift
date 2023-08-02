//
//  ContentView.swift
//  Weather App
//
//  Created by Hmoo Myat Theingi on 16/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
         //   ZStack{
                Background(topColor: Color("BackgroundColor"), bottomColor: .white)
                VStack{
                    SearchMenu(leftLogo: "line.3.horizontal.circle", rightLogo: "magnifyingglass.circle")
                    CityName(city: "Yangon", condition: "Cloudy",temperatureLogo: "cloud.sun.fill",temperature: "37°C",temperatureRange: "28°C-35°C")
                    TodayBar(left: "Today", right: "See All")
                    HStack{
                        Spacer()
                        WeatherDayView(time: "Now", logo: "cloud.sun.rain.fill", temperature: "28°", condition: "rainy")
                        Spacer()

                        WeatherDayView(time: "12:00", logo: "sun.max.fill", temperature: "30°", condition: "sunny")
                        Spacer()

                        WeatherDayView(time: "14:00", logo: "cloud.sun.rain.fill", temperature: "29°", condition: "sunny")
                        Spacer()

                        WeatherDayView(time: "2:00", logo: "cloud.bolt.rain.fill", temperature: "28°", condition: "rainy")
                        Spacer()

                    }
                    TodayBar(left: "Tommrrow", right:  "See All")
                    TommorrowBar(time: "01:00", logo: "cloud.sun.rain.fill", temperature: "28°", condition: "rainy")
                    
                    Spacer()
                    
                }
            //}
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//MARK: - Background

struct Background:View {
    var topColor:Color
    var bottomColor:Color
    var body: some View{
        LinearGradient(colors: [topColor,bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}
//MARK: - SearchMenu

struct SearchMenu:View {
    var leftLogo:String
    var rightLogo:String
    var body: some View{
        HStack{
            Image(systemName: leftLogo)
                .renderingMode(.original)
                .resizable()
                .frame(width: 25,height: 25)
            Spacer()
            Image(systemName: rightLogo)
                .renderingMode(.original)
                .resizable()
                .frame(width: 25,height: 25)
        }
        .padding()
    }
}
//MARK: - CityName

struct CityName:View {
    var city:String
    var condition:String
    var temperatureLogo:String
    var temperature:String
    var temperatureRange:String

    var body: some View{
        VStack{
            Text(city)
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.medium)
            Text(condition)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.top,5)
            Image(systemName: temperatureLogo)
                .renderingMode(.original)
                .resizable()
                .frame(width: 250,height: 180)
            Text(temperature)
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.medium)
            Text(temperatureRange)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.top,5)

        }
    }
}
//MARK: - TodayBar

struct TodayBar:View {
    var left:String
    var right:String
    var body: some View{
        HStack{
            Text(left)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
            Text(right)
                .fontWeight(.light)
                .underline()
        }
        .padding()
    }
}



//MARK: - WeatherDayView

struct WeatherDayView:View {
    var time:String
    var logo:String
    var temperature:String
    var condition:String

    var body: some View{
        VStack{
            Text(time)
                .font(.headline)
                .fontWeight(.bold)
            Image(systemName: logo)
                .renderingMode(.original)
                .resizable()
                .frame(width: 30,height: 30)
            Text(temperature)
                .font(.headline)
                .fontWeight(.bold)
            Text(condition)
                .font(.headline)
                .fontWeight(.bold)
        }
        .padding()
        .background(Color("BackgroundColor"))
        .cornerRadius(10)

    }
}
//MARK: - TommorrowBar

struct TommorrowBar:View {
    var time:String
    var logo:String
    var temperature:String
    var condition:String
    var body: some View{
        HStack{
            Spacer()
            Text(time)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()

            Image(systemName: logo)
                .renderingMode(.original)
                .resizable()
                .frame(width: 30,height: 30)
            Spacer()

            Text(temperature)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()

            Text(condition)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()

        }
        .padding()
        .frame(width: 380)
        .background(Color("BackgroundColor"))
        .cornerRadius(10)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ////MARK: - SearchMenu
    //
    //struct SearchMenu:View {
    //    var leftLogo:String
    //    var rightLogo:String
    //    var body: some View{
    //        HStack{
    //            Image(systemName: leftLogo)
    //                .renderingMode(.original)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
    //                .frame(width: 30)
    //
    //            Spacer()
    //            Image(systemName: rightLogo)
    //                .renderingMode(.original)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
    //                .frame(width: 30)
    //        }
    //        .padding(.horizontal)
    //    }
    //}
    ////MARK: - Background view
    //
    //struct Backgroundview:View {
    //    var topColor:Color
    //    var bottomColor:Color
    //
    //    var body: some View{
    //        LinearGradient(colors: [topColor,bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
    //            .ignoresSafeArea()
    //    }
    //}
    ////MARK: - Cityname
    //
    //struct CityName:View {
    //    var cityname:String
    //    var weatherCondition:String
    //
    //    var body: some View{
    //        VStack{
    //            Text(cityname)
    //                .font(.title)
    //                .fontWeight(.medium)
    //                .fontDesign(.rounded)
    //
    //            Text(weatherCondition)
    //                .font(.title3)
    //                .fontWeight(.regular)
    //                .fontDesign(.rounded)
    //                .padding(.top,10)
    //        }
    //
    //
    //    }
    //}
    //
    ////MARK: - TodayTemperature
    //
    //struct TodayTemperature:View {
    //
    //    var temperatureImage:String
    //    var temperature:String
    //    var temperatureRange:String
    //
    //    var body: some View{
    //        VStack{
    //            Image(systemName: temperatureImage)
    //                .renderingMode(.original)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
    //                .frame(width: 200,height: 200)
    //            Text(temperature)
    //                .font(.largeTitle)
    //                .fontWeight(.bold)
    //                .fontDesign(.rounded)
    //            Text(temperatureRange)
    //                .font(.callout)
    //                .fontDesign(.monospaced)
    //
    //        }
    //    }
    //}
    ////MARK: - TodayBar
    //
    //struct TodayBar :View{
    //    var left:String
    //    var right:String
    //    var body: some View{
    //        HStack{
    //            Text(left)
    //                .font(.headline)
    //                .fontWeight(.bold)
    //            Spacer()
    //            Text(right)
    //                .font(.headline)
    //                .fontWeight(.thin)
    //                .underline()
    //        }
    //    }
    //}
    //
    //
    //
    ////MARK: - WeatherDayView
    //
    //struct WeatherDayView:View {
    //
    //    var time:String
    //    var temperatureImage:String
    //    var temperature:String
    //    var weatherCondition:String
    //
    //    var body: some View{
    //        VStack{
    //            Text(time)
    //                .font(.headline)
    //                .fontWeight(.medium)
    //            Image(systemName: temperatureImage)
    //                .renderingMode(.original)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
    //                .frame(width: 40,height: 40)
    //            Text(temperature)
    //                .font(.headline)
    //                .fontWeight(.medium)
    //            Text(weatherCondition)
    //                .font(.headline)
    //                .fontWeight(.medium)
    //        }
    //        .frame(width: 70,height: 150)
    //        .padding(4)
    //
    //    }
    //}
    ////MARK: - TomorrowWeather
    //
    //struct TomorrowWeather:View {
    //    var time:String
    //    var temperatureImage:String
    //    var weatherCondition:String
    //    var temperature:String
    //
    //
    //    var body: some View{
    //        HStack{
    //            Spacer()
    //
    //            Text(time)
    //                .font(.headline)
    //                .fontWeight(.medium)
    //            Spacer()
    //
    //            Image(systemName: temperatureImage)
    //                .renderingMode(.original)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
    //                .frame(width: 40,height: 40)
    //            Spacer()
    //
    //            Text(weatherCondition)
    //                .font(.headline)
    //                .fontWeight(.medium)
    //            Spacer()
    //
    //            Text(temperature)
    //                .font(.headline)
    //                .fontWeight(.medium)
    //            Spacer()
    //
    //        }.padding()
    //        .background(Color("BackgroundColor"))
    //        .cornerRadius(10)
    //        .padding()
    //    }
    //}
    
    //MARK: - Zstack
    //{
    //
    //    Backgroundview(topColor: Color("BackgroundColor"), bottomColor: .white)
    //    VStack{
    //        SearchMenu(leftLogo: "line.3.horizontal.circle", rightLogo: "magnifyingglass.circle")
    //        CityName(cityname: "Yangon", weatherCondition: "Cloudy")
    //        TodayTemperature(temperatureImage: "cloud.sun.fill", temperature: "32°", temperatureRange: "28°C-35°C")
    //        TodayBar(left: "Today", right: "See All").padding(.horizontal)
    //        HStack(spacing: 30){
    //            WeatherDayView(time: "Now", temperatureImage: "cloud.sun.rain.fill", temperature: "28°", weatherCondition: "Rainy")
    //                .background(Color(.white))
    //                .cornerRadius(10)
    //                .shadow(radius: 6)
    //            WeatherDayView(time: "12:00", temperatureImage: "sun.max.fill", temperature: "29°", weatherCondition: "Sunny")
    //                .background(Color("BackgroundColor"))
    //                .cornerRadius(10)
    //            WeatherDayView(time: "14:00", temperatureImage: "cloud.sun.fill", temperature: "30°", weatherCondition: "Sunny")
    //                .background(Color("BackgroundColor"))
    //                .cornerRadius(10)
    //            WeatherDayView(time: "Now", temperatureImage: "cloud.bolt.rain.fill", temperature: "28°", weatherCondition: "Rainy")
    //                .background(Color("BackgroundColor"))
    //                .cornerRadius(10)
    //
    //        }.padding(.bottom)
    //        TodayBar(left: "Tomorrow", right: "See All").padding(.horizontal)
    //        TomorrowWeather(time: "01:00", temperatureImage: "cloud.bolt.rain.fill", weatherCondition: "Rainy", temperature: "25°C")
    //
    //        Spacer()
    //
    //
    //
    //    }
    //}
}
