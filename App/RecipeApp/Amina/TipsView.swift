import SwiftUI

struct TipsView: View {
    let tips: [String] = [
        "Всегда пробуй еду на вкус до подачи.",
        "Не бойся экспериментировать с приправами!",
        "Готовь на среднем огне — это спасает от подгорания.",
        "Овощи вкуснее, если их слегка поджарить на оливковом масле.",
        "Используй таймер, чтобы не забыть о времени варки."
    ]

    @State private var currentTip: String = ""
    @State private var likedTips: [String] = []

    var body: some View {
        NavigationStack {
            ZStack {
                Color.pink.opacity(0.1)
                    .ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 20) {
                        // совет на данный момент
                        if !currentTip.isEmpty {
                            VStack(spacing: 12) {
                                Text(currentTip)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.white)
                                    .cornerRadius(12)
                                    .shadow(color: .gray.opacity(0.3), radius: 4, x: 0, y: 2)

                                // кнопка понравилось
                                Button(action: {
                                    if likedTips.contains(currentTip) {
                                        likedTips.removeAll { $0 == currentTip }
                                    } else {
                                        likedTips.append(currentTip)
                                    }
                                }) {
                                    Text("❤️ Понравилось")
                                        .padding(.horizontal)
                                        .padding(.vertical, 6)
                                        .background(Color.pink.opacity(0.2))
                                        .cornerRadius(8)
                                        .foregroundColor(.black)
                                }
                            }
                        }

                        // кнопка показать новый совет
                        Button(action: {
                            if let random = tips.randomElement() {
                                currentTip = random
                            }
                        }) {
                            Text("💡 Полезный советик")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.pink.opacity(0.3))
                                .cornerRadius(12)
                                .foregroundColor(.black)
                        }

                        // Избранные советы
                        if !likedTips.isEmpty {
                            Text("💖 Избранные советы:")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top)

                            VStack(spacing: 10) {
                                ForEach(likedTips, id: \.self) { tip in
                                    Text(tip)
                                        .padding()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .background(Color.white)
                                        .cornerRadius(12)
                                        .shadow(color: .gray.opacity(0.2), radius: 2, x: 0, y: 1)
                                }
                            }
                        }

                        Spacer()
                    }
                    .padding()
                }
            }
            .navigationTitle("Советы")
            .onAppear {
                if currentTip.isEmpty, let random = tips.randomElement() {
                    currentTip = random
                }
            }
        }
    }
}
