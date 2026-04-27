## [Machine Learning and AI] 4-1. Natural language - Analyze sentiment in text
[🔗 link](https://developer.apple.com/tutorials/develop-in-swift/analyze-sentiment-in-text)


- You use .insert rather than .append so the most recent values display first.

### import NaturalLanguage
**NLTagger** : accepts a tag scheme that is used to determine information about provided text, such as its lexical class (grammar) or the language it’s written in.
- 자연어 텍스트를 분석하고 태깅(Tagging, 꼬리표 붙이기)을 처리하는 도구
**.sentimentScore** : 감성 점수. that scores text as positive, negative, or neutral based on its sentiment polarity.
| **점수 범위** | **의미 (Sentiment)** | **비고** |
| --- | --- | --- |
| **$+1.0$** | **매우 긍정적** (Highly Positive) | "최고예요", "정말 행복해요" 등 |
| **$0.0$** | **중립적** (Neutral) | 사실 위주의 문장이나 감정이 배제된 텍스트 |
| **$-1.0$** | **매우 부정적** (Highly Negative) | "최악이에요", "정말 화가 나요" 등 |


### FocusState
어느 입력창(view)에 포커스가 가 있는지 관리하고 저장하는 propery wrapper

### import Charts
데이터 시각화. 간결하게 차트를 만들 수 있음
- 차트를 하나의 view로 취급. Chart -> Mark
```
Chart(responses) { response in
            SectorMark(angle: .value("Type", 1))
                .foregroundStyle(by: .value("sentiment", response.sentiment))
        }
        .chartForegroundStyleScale([
            Sentiment.positive : Sentiment.positive.sentimentColor,
            Sentiment.negative : Sentiment.negative.sentimentColor,
            Sentiment.moderate : Sentiment.moderate.sentimentColor
        ])
```

### Plottable
데이터를 차트의 축(x, y축)이나 legend에 그릴 수 있는 형태로 변환하기 위한 프로토콜
- 우리가 만든 데이터(ex. enum)는 차트가 어떻게 그려야 할 지 모름 -> 이 데이터는 차트에서 이런 값으로 취급해줘


---
## Preview
<p align="center">
  <img src="./img/screenshot1.png" width="300">
  <img src="./img/screenshot2.png" width="300">
</p>
