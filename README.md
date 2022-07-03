# Partly Windy

A weather app powered by the very latest in machine learning technology.

## TL;DR

We're gonna make a Flutter app that leverages OpenAI text completion to give us the weather
forecasts. No more messing with rain gages and those spinning wind speed gadgets, we are going to
get our weather forecasts right from the burning heart of computer science achievement, machine
learning. It will go great. Don't worry.

## Forecasting the Weather

For many thousands of years, humans have tried all kinds of zany ways to predict the weather. In ye
olden days, people relied on lore and superstition to predict the weather. They looked at cloud
patterns, patterns in the stars, patterns in the colors at sunset, lunar phase patterns, and all
kinds of other patterns besides. Really, people just had a great zeal for implying causation from
correlation when it came to weather forecasting.

Today, of course, we predict the weather from patterns in massive datasets. Using science and
technology, modern weather forecasting is actually quite accurate. Forecasting the weather involves
a truly amazing range of scientific instruments, record-keeping, number crunching, and modeling.
Predicting the weather is big business as well, with the value of the whole industry making its way
towards $2 billion annually. There is even a whole government agency dedicated to weather-related
services, regulations, and products. Peppered all across the United States are more than 180,000
weather stations that collect mind-paralyzing amounts of data to be fed into climate models.
Forecasting the weather is a really bonkers endeavor.

## Using AI for That (/s)

Here's the thing though, why don't we just use AI for that? Machine learning, or, popularly,
artificial intelligence is constantly being held up as the culmination of all human achievement, or
so it sometimes seems. Machine learning is constantly being touted as the solution for all manner of
different issues. Don't like driving your car? Make the AI do that. Don't like typing things into
your smartphone? Make the AI listen to queries. Don't like shopping? Make the AI tell you what you
want to buy. Don't like paying call center employees? Make the AI talk to your customers, they will
love it!

So, today we are going to unleash machine learning to make a whole new group of employed people
redundant: weather scientists and TV personalities. Why bother with all that scientific gadgetry,
data collection, and mathematics when we can just make the AI give us the weather forecast? For the
low, low cost of some data center CPU cycles we can just get a weather forecast from the latest and
greatest in NLP technologies. For the price of your typical weather radar station, we can hit
machine learning API endpoints pretty much forever.

Sure, the accuracy of our weather forecasts might suffer a little; after all, the ability for AI
systems today to deliver actually accurate and truthful information is, without wanting to put too
fine a point on it, total shit. But we can stand to give up a little accuracy if it means we can put
the words "artificial intelligence" in our marketing material.

## On All Your Favorite Platforms

The **Partly Windy** app is built using Flutter, the cross-platform app development framework from
Google. One of the greatest parts about developing with Flutter is that apps can be built for and
run on many different platforms from a single codebase. Flutter 3.x supports Android, iOS, web,
Windows, MacOS, and Linux. Partly Windy supports all of these platforms (although it has not been
built for the Apple ones yet since I don't own a MacOS machine).

However, with this project we will go one step farther still with the effort to run the app on 
*every* screen by including support for Wear OS devices, still from the same codebase as the 
other platforms.

## Set up OpenAI Authentication

The "latest in machine learning technology" referenced up at the very top of this README is 
OpenAI's set of NLP tools and APIs: [https://beta.openai.com/overview](https://beta.openai.com/overview). 
This app uses the text completion capabilities of the OpenAI ML models to generate
"weather forecasts" that doubtless have infallible accuracy (again /s).

Before you can use OpenAI's APIs in your own build of this codebase, you will need to obtain an 
API key. Needless to say, for security reasons, my API key is not included in this repository.
The process for obtaining an API key is basically to just start a free trial on the OpenAI 
website or plug in your payment information if your usage exceeds the trial terms. You can head
over to the [OpenAI website](https://openai.com/api/) to get an API key.

With your shiny new API key in hand, you will need to add it to a file so the rest of the app can
get it when needed. Create a file called ```api_key.dart``` under ```/lib/openai/```. If you 
tried to build the app before creating this file, you might have received an error message talking
about the fact that it was missing.

The contents of this file will be a simple String value like this:

> ```String openAIApiKey = 'your-key-here';```

With the file created and your API key added to the openAIApiKey variable, you will be all set to
authenticate calls to the OpenAI completions endpoint.

## Set Up a Wear OS Debugging Session

*[http://android.cn-mirrors.com/training/wearables/apps/bt-debugging.html#SetupSession](http://android.cn-mirrors.com/training/wearables/apps/bt-debugging.html#SetupSession)*

1. On the handheld, open the Android Wear companion app.
2. Tap the menu on the top right and select Settings.
3. Enable Debugging over Bluetooth.
4. Connect the handheld to your machine over USB and run:

> ```adb forward tcp:4444 localabstract:/adb-hub```
> ```adb connect localhost:4444```

In the Android Wear companion app, you should see the status change to:

> Host: connected
> Target: connected