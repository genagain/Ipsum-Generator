require 'rails_helper'

feature 'user submits corpus' , %Q{
  As a visitor
  I want to submit a corpus
  So that I can create my own filler text
} do

  # Acceptance Critera:
  # [] I must be able to submit a large body of text through a form
  # [] I must be able to choose how many paragraphs I want to generate
  # [] I must be able to generate the selected number of paragraphs
  # [] If I didn't submit any text I must receive and error

  scenario 'submiting a large body of text through a form' do
    visit root_path

    corpus = """
        We set out to simplify the clutter that comes with furnishing your home. From messy wires to clunky routers, we felt that making your home smarter and more enjoyable was too complicated. So we designed the simplest solution possible -- a hubless, installation-free system that combines high quality lighting and audio into a seamless experience that fits every home.
        We spent more than a year meticulously crafting Twist. From reimagining lighting controls to perfecting AirPlay streaming, we designed Twist to provide the best possible user experience imaginable. And that means not being satisfied with just a great looking product, but one that everyone can enjoy, no questions asked.
        I’ve worked in the smart home industry for a long time. I have built connected products from the ground up, and I’ve learned what it takes to make complicated technology feel simple and seamless.
        I’ve also mastered the art of apartment hunting, as I’ve moved almost a dozen times in the last ten years. I grew frustrated by all of the smart products coming out, as none seemed particularly practical in my 1-bedroom Brooklyn apartment. So I started Twist, to fill that gap and to finally give apartment dwellers a valuable addition that makes their apartment feel a little bit more like home.
        Apartment living is hard. That’s why we built Twist, the perfect lighting and audio system for people who live in small spaces, move frequently, and don’t want to make permanent upgrades to their homes.
        Growbots created the first tool for automatic lead generation and outreach. Now you can generate new lists of qualified prospects and schedule customized email campaigns with just a few clicks.
        B2B sales are human-based and HARD to scale. One sales development representative (SDR) is only able to handle a very limited number of conversations with potential customers. The only way of growing more sales is hiring and training more sales reps. However, it takes 6 months to fully train a sales rep and still 67% of the team won't ever reach their quota. Things get even worse, if you look at what sales reps actually do at work.
        An average SDR is wasting 50% of her time on manual lead prospecting. It's a very painful, manual job. You have to research company size, revenue, and estimate their traffic and MAU. Out of 20 companies on your \"high quality list\" you will be lucky if you qualify one for outreach. It's very important to have high quality data, but does anyone think \"finding things on the Internet\" is the best use of smart people you hire for $100,000+ per year?
        We decided to revolutionize the way sales teams work and replace repetitive, manual tasks with smart software. Our tool generates a list of qualified prospects within seconds, instead of hours.
        It helps sales reps to create and manage automatic email campaigns, so they don't have to follow-up with prospects manually. Sales reps using our software generate 2-3 times more sales opportunities.
        Software is eating the world. We want to help teams to build it better. We primarily do that through technology enhanced training, although we supplement that with consulting and implementation services when required. We also provide a range of resources for engineering managers. Those include the CTO Summit Series and providing support for a range of CTO schools and CTO clubs because building and managing an engineering team is really hard - and really important.
        At Ronin Labs, we innovate on three levels to provide training that will be an order of magnitude more valuable, effective and relevant than other options:
        The domain - We offer consulting and implementation services for two reasons. Firstly we find that they help our clients to get the most out of our training. Secondly, we can't teach real world skills unless we're using those skills on real world projects. Our team of world class engineers are continually innovating in the domains that they teach.
        The curriculum - We continually experiment with new projects, questions, metaphors and examples to continually simplify the process of acquiring the latest technology skills.
        The platform - We are continually innovating on our training platform to continue to make it easier and more enjoyable for your team to master critical new skills.
        Human history is filled with examples of groups coming together and pooling their resources to transform a neighborhood, a community, a city, or even a nation. At Tilt, we’re excited to be building software that makes pooling resources with a group just a little bit easier.
        Since 2012, over 300,000 groups have used Tilt to turn their ideas, large and small, into reality. Our users have done a lot to make us proud, from thousands of tailgates, fantasy football leagues, and party buses all the way to sending the Jamaican Bobsled Team to the Sochi Olympics, fundraising the construction of an entire elementary school in India, bringing the Foo Fighters to perform in a small town, and everything in between.
        Aside from being captured in countless Instagrams and Snapchats, some of these stories have even landed in Rolling Stone, The Tonight Show, Good Morning America, Saturday Night Live, and more. But instead of reading about these experiences, we’d like to help you create some of your own.
        So assemble your crew – we can’t wait to see what you’ll tilt next.
        The LeadGenius team combines world-class expertise in data, virtual work, international development, innovative user design, and a wealth of entrepreneurial experience.
        We all believe in using technology to simplify costly businesses processes while providing jobs to hard-working individuals deserving of opportunities.
        LeadGenius takes care of high-value yet time-consuming \"top of the funnel\" tasks, freeing up sales people to pitch and close deals with the right information at the right time.
        Most B2B lead generation is done using stale, off-the-shelf data. At LeadGenius, our experts carry out custom research to produce highly-targeted lead lists created specifically for each of our clients. We locate hard-to-find company information, key decision makers, and contacts in new markets.
        67% of a salesperson's time is typically spent on non-selling activities - research, data entry, and busy work
        Customer relationship management software such as Salesforce, Sage, SAP and Zoho are only effective if your data is accurate. LeadGenius adds useful fields and information to existing contacts and removes outdated information so your team can focus on higher value tasks.
        Email is the preferred marketing channel for B2B sales teams. LeadGenius uses email prospecting to measure buying intent for new leads. We handle the first touch and deliver qualified responses directly to your inbox. Our emails get an average response rate of more than 5%.
        We started Transcriptic to make the next generation of life science research cheaper, faster, and more accessible than anyone thought possible.
        Transcriptic is a robotic cloud laboratory for the life sciences. Our modular, scalable platform enables organizations of all sizes to do more discovery at lower cost with substantially higher reproducibility. Transcriptic's cloud model means that there's no hardware to buy or software to install and you pay only for what you use. Transcriptic currently supports a broad array of in vitro molecular biology, and has limited support for cell biology with expanded capabilities in development.
        Transcriptic was founded in February 2012 and has grown from an \"unrealistic idea\" in the basement of a Duke library to having dozens of customers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Data Collective, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark Cuban, among others. We were one of the first companies to raise money from a \"crowd\" of angel investors and have gone on to raise over $14M to date.
        We're in this to change how basic research is done. We want seed incubators to fund biotech companies composed of two graduate students and a laptop, not social-local-mobile photo-sharing apps.
        In our culture, everyone has precisely one priority, dant of a Duke library to having dozens of customers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Data Collective, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark Cuban, among others. We were one of the first companies to raise money from a \"crowd\" of angel inrue, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark Cuban, among others. We were one of the first companies to raise money from a \"crowd\" of angel investodof two graduate students and a laptop, not social-local-mobile photo-sharing apps.
        In our culture, everyone has precisely one priority, dant of a Duke library to having dozens of customers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Data Collective, Google Venturesm omers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Data Collective, Google Ventures, AME Cloud Ventures, Foulillective, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark Cuban, among others. We were one of the fiecm a \"crowd\" of angel investodof two graduate students and a laptop, not social-local-mobile photo-sharing apps.
        In our culture, everyone has precisely one priority, dant of a Duke library to having dozens of customers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Da mlike Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Data Collective, Google Ventures, AME Cloud Ventures, Foulillective, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark Cuban, among others. We were one of the fiecm a \"crowd\" of angel investodof two graduate students and a laptop, not social-local-mobile photo-henvestodof two graduate students and a laptop, not social-local-mobile photo-sharing apps.
        In our culture, everyone has precisely one priority, dant of a Duke library to having dozens of customers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, haring apps.
        In our culture, everyone has precisely one priority, dant of a wtutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, Da mlike Harvarisinancially backed by IA Ventures, Data Collective, Google Ventures, AME Cloud Ventures, Foulillective, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark dione of the fiecm a \"crowd\" of angel investodof two graduate students and a laptop, not social-local-mobile photo-henvestodof two graduate students and a laptop, not social-local-mobile photo-sharing apps.
        In a of a Duke library to having dozens of customers at institutions like Harvard, Stanford, Caltech, UC Davis, and UC San Diego.
        We're financially backed by IA Ventures, haring apps.
        In our culture, everyone has precisely one priority, dant of a wtutions like Harsh financially backed by IA Ventures, haring apps.
        In our culture, everyone has precisely one priority, dant of a wtutions like HartuA Ventures, Data Collective, Google Ventures, AME Cloud Ventures, Foulillective, Google Ventures, AME Cloud Ventures, Founders Fund, Naval Ravikant, and Mark dione of the fiecm a \"crowd\" of angel investodof two graduate students and a laptop, not social-local-mplete tool for creating products and services in cooperation with other members of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comment on pixel perfect projects. And everyday we try to add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of the fiecm a \"crowd\" of angel investodof two graduate students and a laptop, not social-local-mplete tool for creating products and services in cooperation with other members of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comment on pixel perfect projects. And everyday we try to add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of the fiecm n main street, launch your brand at a street fair or showcase your products in a local boutique, Storefront is the world's leading online marketplace for renting short term retail space\"crowd\" of angel investodof two graduate students and a laptop, not social-local-mplete tool for creating products and services in cooperation with other members of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comment on pixel perfect projects. And everyday we try to add something what make iecooperation with other members of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comiv add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of the fiegeembers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comment on pixel perfect projects. And everyday we try to add something what make iecooperation with other members of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comiv add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and add comiv add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make tra your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal servg d clients.
        With UXPin you could prepare wireframes, create prototypes and add comiv add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and addre/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of thet iegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and addl u could prepare wireframes, create prototypes and add comiv add something what make your work easier/better/more functional.
        UpCounsel is on a mission to make the legal experience remarkable. By making legal services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and addre/more functional.
        UpCo tarkable. By making legal services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and  um t'embers of design team and clients.
        With UXPin you could prepare wireframepesel is on a mission to make the legal experience remarkable. By making legal services highrk dione of thet iegeembers of design tnt services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and addre/more functional.
        UpCo tarkable. By making legal services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and  um t'embers of design team and clients.
        With UXPin you could prepare wirefro es, create prototypes and addre/more functional.
        UpCo tarkable. By making legal services highrk dione of the fiegeembers of desigio services highrk dione of the fiegeembers of design team t'embers of design ting your list from a .csv or .xls file. We'll update your lists as responses roll in. At anytime, you can export and sync with Salesfd addre/more functional.
        UpCo tarkable. By making legal services highrk dione of the fiegeembers of design team t'embers of design team and clients.
        With UXPin you could prepare wireframes, create prototypes and  um t'embers of design team and clients.
        With UXPin you could prepare wirefro es, create prototypes and addre/more functional.
        UpCo tarkable. By making legal services highrk dionees get deleted and ignored, even by those who know you. Dust off old leads and bring old customers back in, as well as attract new customers. With Sales Beach, you can nurture your leads and understand what is valuable to them.
        Sales Beach optimizes your drip campaign. By testing dozens of variations of messaging, content, timing, and personalization, you're guaranteed to improve response rates, maximizing the value of your email list.
        Find out what motivates your leads and customers with powerful analytics. Understand what drives each campaign, audience, and email to perfect your entire sales process.
        Easily launch iOS and Android apps on our cloud platform that supports anytime content updates, geoh, you can nurture your leads and understand what is valuable to them.
        Sales Beach optimizes your drip campaign. By testing dozens of variations of messaging, content, timing, and personalization, you're guaranteed to improve response rates, maximizing the value of your email list.
        Find out what motivates your leads and customers with powerful analytics. Understand what drives each campaign, audience, and email to perfect your entire sales process.
        Easily launch iOS P of your email list.
        Find out what motivates your leads and customers with powerful analytics. Understand what drives each campaign, audience, and email to perfect your entire sales process.
        Easily launch iOS and Android apps on our cloud platform that support i, audience, and email to perfect your entire sales process.
        Easily launch iOS and Android apps on our cloud platform that supporte anytime content updates, geoh, you can nurture your leads and understand what is valuable to them.
        Sales Beach optimizes your driting, content, timing, and personalization, you're guaranteed to improve response rates, maximizing the value of your email list.
        Find out what motivates your leads and customers with cnd what drives each campaign, audience, and email to perfect your entire sales process.
        Easily launch iOS P of your email list.
        Find out what motivates your leads and customers with powerful analytics. Undersusd out what motivates your leads and customers with powerful analytics. Understand what drives each campaign, audience, and email he speed to reach the consumer with your alternative advertisement is essential.  That is why the moment any user within our network  perfect your entire sales process.
        Easily launch iOS and Android apps on our cloud platform that supporte anytime content updateere you wish to run your ads (Facebook, Google ad network etc), your competitive ad can begin to show up very quickly.
        Your Intenta Advertising Representative will work with you to not r leads and customers with cnd what drives each campaign, audience, and email to perfect your entire sales process.
        Easily launch iOS P of your email list.
        Find out what motivates your leads and customers witeaaign, audience, and email to perfect your entire sher leads and customers with powerful analytics. Understand what drives each campaign, audience, and email he speed to reach the consumer with your alternative advertisement is essential.  That is why the momentol.  That is why the moment any user within our network  perfect your entire sales process.
        Easily launch iOS and Android apps on our cloud platform that supporte anytime content updfor cloud platform that supporte anytime content updateere you wish to run your ads (Facebook, Google ad network etc), your competi ave ad can begin to show up very quickly.
        Your Intenta Advertising Representative will work with you to not r leads and customers one will work with you to not r leads and customers with cnd what drives each cs les process.
        Easily launch iOS P of your email list.
        Find out what motivates your leads and customers witeaaign, audience, and emucl he speed to reach the consumer with your alternative advertisement is essential.  That is why the momentol.  That is why the moment any user within our network  perfect your entire sales process.
        Easily launch iOS and Android apps on our cloud platform that  underlies our approach to value definition based on clinical and economic benefit.
        Our core capabilities in predictive analytics capporte anytime content updfor cloud platform that supporte anytime content updateere you wish to run your ads (Facebook, Google a bpporte anytime content updateere you wish to run yanford Health Care to realize a shared vision for a digital health enabled future your leads and customers witeaaign, audience, and emucl he speed to reach the consumer with your alternative advertisement is essential.  That is why the momentol.  That
        """
    fill_in 'Corpus', with: corpus

    click_button 'Generate your Lorem Ipsum'

    expect(page).to have_content('You successfully generated your own Lorem Ipsum')
  end
end
