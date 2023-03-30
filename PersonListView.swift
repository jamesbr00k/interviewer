//
//  PersonListView.swift
//  Interviewer
//
//  Created by James Brook on 25/03/2023.
//

import SwiftUI

struct PersonListView: View {
    @State var people: [Person] = [
        Person(
            name: "Anne Frank",
            messageGroups: [
                MessageGroup(
                    prompt: "Tell me a bit about yourself and your family?",
                    messages: [
                        Message(content: "So, for those who may not know, can you tell me a bit about yourself and your family?", messageType: .Me),
                        Message(content: "Of course. My name is Anne Frank, and I was born on June 12, 1929, in Frankfurt, Germany. My parents were Otto and Edith Frank, and I had an older sister named Margot.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "When did you and your family leave Germany?",
                    messages: [
                        Message(content: "When did you and your family leave Germany?", messageType: .Me),
                        Message(content: "My father, Otto, left Germany for Amsterdam in the Netherlands in 1933, after the Nazis came to power. The rest of the family joined him in 1934.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "What was life like for your family in Amsterdam?",
                    messages: [
                        Message(content: "What was life like for your family in Amsterdam?", messageType: .Me),
                        Message(content: "Life was difficult for Jews in Amsterdam, especially after the Germans occupied the city in 1940. In 1942, they started deporting Jews to concentration camps in the east. That's when my family and I went into hiding.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "Can you tell me more about your experience in hiding?",
                    messages: [
                        Message(content: "Can you tell me more about your experience in hiding?", messageType: .Me),
                        Message(content: "We lived in a secret apartment at 263 Prinsengracht Street for two years, along with four other Jews. We had to be very quiet and stay hidden during the day. It was a scary and difficult time, but we were grateful for the friends who helped us hide and brought us food and supplies.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "Your family was eventually discovered. Can you tell me about that?",
                    messages: [
                        Message(content: "Unfortunately, your family was eventually discovered. Can you tell me about that?", messageType: .Me),
                        Message(content: "Yes, on August 4, 1944, the German SS and police found our hiding place. We were taken to Westerbork transit camp and then to Auschwitz-Birkenau in Poland. My sister and I were later transferred to Bergen-Belsen, where we both died of typhus in February or March of 1945.", messageType: .Sender),
                        Message(content: "I’m so sorry for your loss, Anne. What happened to the rest of your family?", messageType: .Me),
                        Message(content: "My mother died in Auschwitz in January 1945. My father was the only one who survived. He was liberated by Soviet forces in January 1945 and later presented with my diary, which was preserved by one of the Dutch citizens who helped us hide.", messageType: .Sender)
                    ]
                )
            ],
            sources: [
                "Wikipidea.org",
                "annefrank.org",
                "encyclopedia.ushmm.org/content/en/article/anne-frank-biography"
            ],
            imageName: "AnneFrank"
        ),Person(
            name: "Carl Lutz",
            messageGroups: [
                MessageGroup(
                    prompt: "What motivated you to leave your home country?",
                    messages: [
                        Message(content: "You were born in Switzerland and later emigrated to the US. What motivated you to leave your home country?", messageType: .Me),
                        Message(content: "I realised at a young age that my future was not in Switzerland. I had a strong desire to explore the world and seek new opportunities, so I decided to emigrate to the United States when I was 18.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You changed course and entered the field of diplomacy. Can you tell me about that transition?",
                    messages: [
                        Message(content: "You initially pursued a career as a pastor but changed course and entered the field of diplomacy. Can you tell me about that transition?", messageType: .Me),
                        Message(content: "Yes, I quickly realised that being a pastor was not the right path for me. I was fortunate to secure a summer job at the Swiss Legation in Washington, where Ambassador Marc Peter took notice of me and encouraged me to study diplomacy. I then attended George Washington University and graduated in 1924.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "Your diplomatic career took you to several Swiss Consulates. How did this experience shape your later actions?",
                    messages: [
                        Message(content: "Your diplomatic career took you to several Swiss Consulates in the US before you were appointed to the Jaffa Consulate in Palestine. How did this experience shape your later actions in Budapest during the war?", messageType: .Me),
                        Message(content: "My time in Palestine was indeed a decisive experience. When Germany asked Switzerland to represent its diplomatic interests there, I was put in charge. This experience helped me build a strong relationship with the Germans, which later proved instrumental when negotiating with them in Budapest.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "In Budapest, you leveraged the White Papers to save thousands of Jewish lives. Can you explain how you utilised these papers to protect the Jews?",
                    messages: [
                        Message(content: "In Budapest, you leveraged the White Papers to save thousands of Jewish lives. Can you explain how you utilised these papers to protect the Jews?", messageType: .Me),
                        Message(content: "When Hungary was invaded by Germany, I had a list of 7,800 Jews who were allowed to emigrate to Palestine. I decided to issue letters of protection, or \"Schutzbrief,\" to these individuals. These letters stated that the holder was authorised to emigrate to Palestine and was under Swiss protection, preventing them from being subjected to forced labor or deportation.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You also managed to establish 76 safe houses in Budapest. How were you able to accomplish this?",
                    messages: [
                        Message(content: "You also managed to establish 76 safe houses in Budapest. How were you able to accomplish this?", messageType: .Me),
                        Message(content: "I used my diplomatic relationships and negotiation skills to secure authorisation from the Germans and Hungarians to put these houses under Swiss protection. Each building was marked with a diplomatic plate, which meant they were automatically under diplomatic protection.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You went against the ban on issuing Schutzbrief. Can you tell me more about this?",
                    messages: [
                        Message(content: "You went against the ban on issuing Schutzbrief. Can you tell me more about this?", messageType: .Me),
                        Message(content: "To bypass the ban on issuing Schutzbrief to Jews, I decided to register them on several collective passports, each containing 1,000 names. These passports stipulated that each registered person was a Swiss citizen, offering them protection.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "Your courageous actions saved many lives, but it also took a toll on your personal life. Can you share your thoughts on this?",
                    messages: [
                        Message(content: "Your courageous actions saved many lives, but it also took a toll on your personal life. Can you share your thoughts on this?", messageType: .Me),
                        Message(content: "I did face some challenges in my personal life, including a divorce and a period of depression. However, I continued working for the Swiss Administration for another 10 years before being appointed consul again in 1955. I believe that my actions were necessary to save lives, and I have no regrets about my decisions.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You have been recognised for your heroic actions, including being named Righteous Among the Nations by Yad Vashem. How do you feel about these honours?",
                    messages: [
                        Message(content: "You have been recognised for your heroic actions, including being named Righteous Among the Nations by Yad Vashem. How do you feel about these honours?", messageType: .Me),
                        Message(content: "I'm grateful for the recognition, but I always believed that it was my duty to help those in need, regardless of the accolades. I am just thankful that I was able to save as many lives as I did.", messageType: .Sender)
                    ]
                )
            ],
            sources: [
                "jfr.org",
                "carl-lutz.com/en/carl-lutz-2/"
            ],
            imageName: "CarlLutz"
        ),Person(
            name: "Freddie Oversteegen",
            messageGroups: [
                MessageGroup(
                    prompt: "What led you to join the resistance?",
                    messages: [
                        Message(content: "You were only 14 when you joined the Dutch resistance during World War II. Can you tell me what led you to join the resistance?", messageType: .Me),
                        Message(content: "My sister Truus and I grew up in a household where our mother taught us the importance of fighting injustice. She took in Jewish refugees when Europe was on the brink of war in 1939. When Nazis invaded the Netherlands, we followed our mother's example and joined her in distributing anti-Nazi newspapers and pamphlets for the resistance.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "It must have been quite dangerous for you and your sister. Weren't you afraid of getting caught?",
                    messages: [
                        Message(content: "It must have been quite dangerous for you and your sister to engage in such activities at such a young age. Weren't you afraid of getting caught?", messageType: .Me),
                        Message(content: "Of course, there was fear, but we knew the importance of fighting against the Nazis. Being young girls, we appeared less suspicious to the authorities, which allowed us to carry out our tasks without raising too much suspicion.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You and your sister eventually became armed assassins for the resistance. How did you feel when you first learned what you would have to do?",
                    messages: [
                        Message(content: "You and your sister eventually became armed assassins for the resistance. How did you feel when you first learned what you would have to do?", messageType: .Me),
                        Message(content: "When we were recruited, we didn't know the extent of the tasks we would be given. Later, when we were told about sabotage and shooting Nazis, it was a shock, but we knew we had to do whatever we could to fight against the occupation.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "How did you and your sister carry out assassination missions?",
                    messages: [
                        Message(content: "How did you and your sister carry out assassination missions?", messageType: .Me),
                        Message(content: "We never revealed specific details about our missions, but sometimes we would follow a target to his house or ambush them on their bikes. I was often responsible for following a target or keeping a lookout since I looked young and unsuspecting.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You later teamed up with Hannie Schaft. How did that collaboration come about, and how did it affect your work with the resistance?",
                    messages: [
                        Message(content: "You later teamed up with Hannie Schaft. How did that collaboration come about, and how did it affect your work with the resistance?", messageType: .Me),
                        Message(content: "We met Hannie in 1943, and she became our best friend. She was a former university student who dropped out because she refused to sign a pledge of loyalty to Germany. Together, we formed a sabotage and assassination cell, and our work continued in that direction.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "The war had a lasting impact on you and your sister. How did you cope with the trauma",
                    messages: [
                        Message(content: "The war had a lasting impact on you and your sister. How did you cope with the trauma of your experiences?", messageType: .Me),
                        Message(content: "After the war, we dealt with the trauma in different ways. Truus created sculptures and wrote about our time in the resistance. As for me, I coped by getting married and having children, but the experience of war still caused me insomnia.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "you and your sister were not recognised by the Netherlands until 2014. How did it feel to finally receive the War Mobilisation Cross?",
                    messages: [
                        Message(content: "Despite your bravery and dedication, you and your sister were not recognised by the Netherlands until 2014. How did it feel to finally receive the War Mobilisation Cross?", messageType: .Me),
                        Message(content: "It was a long time coming, but we were grateful to finally receive national recognition for our service to our country. It's important to remember the sacrifices made by those who fought against injustice and to honour their memory.", messageType: .Sender)
                    ]
                )
            ],
            sources: ["history.com/news/dutch-resistance-teenager-killed-nazis-freddie-oversteegen"],
            imageName: "FreddieOversteegen"
        ),Person(
            name: "Josephine Baker",
            messageGroups: [
                MessageGroup(
                    prompt: "How did you first became involved in the French resistance?",
                    messages: [
                        Message(content: "We'd like to discuss your amazing journey as a singer, dancer, and your secret life as a spy during World War II. Can you tell me how you first became involved in the French resistance?", messageType: .Me),
                        Message(content: "Thank you for having me. I've always cherished the freedom I found in France, and when the war broke out, I knew I had to do something to help protect that freedom. Jacques Abtey, a French intelligence agent, approached me and asked if I would be willing to join his network. I didn't hesitate to say yes – the Parisians had given me their hearts, and I was ready to give them my life.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "how did you gather intelligence for the French resistance?",
                    messages: [
                        Message(content: "Can you give me an insight into how you gathered intelligence for the French resistance?", messageType: .Me),
                        Message(content: "I would attend events and parties where the Axis elite gathered, socialising and listening closely to their conversations. I reported my findings to Abtey, sometimes even taking notes on my arm or the palm of my hand. People never suspected me of being a spy because of my fame and the nature of my work as a performer.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "How did your life change with the Nazi invasion of France?",
                    messages: [
                        Message(content: "With the Nazi invasion of France, you had to flee Paris. How did your life change during that period?", messageType: .Me),
                        Message(content: "Yes, I had to leave Paris and move to southern France, where I rented a chateau and offered refuge to others fleeing the Nazis. I continued my intelligence work from there, working closely with Abtey, who disguised himself as my ballet instructor. We toured Portugal and smuggled information written in invisible ink on the back of my sheet music and photographs pinned to the inside of my dress.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You performed for soldiers and raising funds. Can you tell me more about that?",
                    messages: [
                        Message(content: "In addition to your work as a spy, you also supported the Allied cause by performing for soldiers and raising funds. Can you tell me more about that?", messageType: .Me),
                        Message(content: "Starting in 1943, I toured North Africa and performed for Allied soldiers. I managed to raise over three million francs for the Free French Army through my performances. The women's auxiliary of the French air force made me an officer, and I wore my air force uniform at appearances for the rest of my life.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "How did it feel to be recognised with prestigious honours?",
                    messages: [
                        Message(content: "Your actions during the war were nothing short of heroic. How did it feel to be recognised with prestigious honours,such as the Croix de Guerre and the Rosette de la Résistance?", messageType: .Me),
                        Message(content: "I was deeply honoured and humbled to receive such recognition. However, my primary motivation was always to protect the freedom and values that France had given me. It was never about personal accolades; it was about standing up against injustice and fighting for a better world.", messageType: .Sender)
                    ]
                ),
                MessageGroup(
                    prompt: "You remained dedicated to civil rights causes even after the war. What message did you hope to convey?",
                    messages: [
                        Message(content: "You remained dedicated to civil rights causes even after the war, including participating in the 1963 March on Washington. What message did you hope to convey there?", messageType: .Me),
                        Message(content: "At the 1963 March on Washington, I wanted to express my solidarity with the civil rights movement in the United States and let people know that their fight was not just a local one – it was a global struggle for equality and justice. I wanted to convey my pride in standing alongside them and share my own experiences of fighting for the rights of humanity. I hoped to inspire others to continue pushing forward in the pursuit of a more inclusive and just world.", messageType: .Sender)
                    ]
                )
            ],
            sources: ["history.com/news/6-people-you-didnt-know-were-wwii-spies", "medium.com/memory-action/the-double-life-of-josephine-baker-ad35134af8dd"],
            imageName: "JosephineBaker"
        ),Person(name: "Adolf Hitler",
                 messageGroups: [
                    MessageGroup(
                        prompt: "How did your upbringing and experiences in Austria influence your later political beliefs?",
                        messages: [
                            Message(content: "How did your upbringing and experiences in Austria influence your later political beliefs?", messageType: .Me),
                            Message(content: "My upbringing was difficult. My father was a strict man who wanted me to follow in his footsteps as a civil servant. I, however, was passionate about art. After being rejected from Vienna’s Academy of Fine Arts, I struggled to make a living. It was during this time that I became aware of the political and social problems plaguing Austria and Germany. These experiences shaped my views on nationalism, race, and the need for a strong leader.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "You were a soldier in World War I, and you experienced firsthand the consequences of Germany's defeat. How did that shape your goals once you entered politics?",
                        messages: [
                            Message(content: "You were a soldier in World War I, and you experienced firsthand the consequences of Germany's defeat. How did that shape your goals once you entered politics?", messageType: .Me),
                            Message(content: "The defeat was a crushing blow for Germany. I believed that the country had been betrayed by its leaders, and that the Treaty of Versailles was a humiliating and unjust punishment. This motivated me to enter politics and restore Germany's pride and position as a great power, free from the shackles of the treaty.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "You adopted the swastika as the emblem of the Nazi Party. What was your intention behind choosing this symbol?",
                        messages: [
                            Message(content: "You adopted the swastika as the emblem of the Nazi Party. What was your intention behind choosing this symbol?", messageType: .Me),
                            Message(content: "The swastika is an ancient and powerful symbol. By adopting it as the emblem of the Nazi Party, I wanted to evoke a sense of tradition and power. It was meant to inspire our followers, and to  represent the unity and strength of the Aryan race.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "In 1923, you led the failed Beer Hall Putsch. What did you learn from this experience, and how did it influence your approach to politics?",
                        messages: [
                            Message(content: "In 1923, you led the failed Beer Hall Putsch. What did you learn from this experience, and how did it influence your approach to politics?", messageType: .Me),
                            Message(content: "The Beer Hall Putsch taught me that the path to power in Germany could not be achieved through a violent coup. I realised that I had to work within the existing political system and use its weaknesses to my advantage. This led me to focus on building a strong party and gaining support from influential individuals and institutions.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "Your rise to power was marked by the creation of organisations such as the Hitler Youth and the SS (Schutzstaffel). What was the purpose behind these organisations?",
                        messages: [
                            Message(content: "Your rise to power was marked by the creation of organisations such as the Hitler Youth and the SS (Schutzstaffel). What was the purpose behind these organisations?", messageType: .Me),
                            Message(content: "The Hitler Youth was established to mould the future generation, instilling them with our ideals and preparing them for service to the nation. The SS, on the other hand, was created as a loyal and disciplined force to protect the NaziParty and enforce our policies. Both organisations were instrumental in consolidating our control over Germany.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "In the years leading up to World War II, you pursued aggressive foreign policies, including the annexation of Austria and the invasion of Poland. What was your ultimate goal?",
                        messages: [
                            Message(content: "In the years leading up to World War II, you pursued aggressive foreign policies, including the annexation of Austria and the invasion of Poland. What was your ultimate goal?", messageType: .Me),
                            Message(content: "My ultimate goal was to secure Lebensraum, or living space, for the German people. I believed that Germany was destined to expand and dominate Europe, and that this could only be achieved through force. The annexation of Austria and the invasion of Poland were the first steps in realising that vision.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "The Holocaust resulted in the deaths of millions of Jews and other minority groups. Can you explain the rationale behind this horrific genocide?",
                        messages: [
                            Message(content: "The Holocaust resulted in the deaths of millions of Jews and other minority groups. Can you explain the rationale behind this horrific genocide?", messageType: .Me),
                            Message(content: "I believed that the Jews and other non-Aryan races were responsible for Germany's problems, including its defeat in World War I and the economic crisis that followed. In my view, these groups threatened the purity and superiority of the Aryan race, and their elimination was necessary for the survival and success of our nation.", messageType: .Sender)
                        ]
                    ),
                    MessageGroup(
                        prompt: "As the tide of the war turned against you, you retreated to your bunker in Berlin. What were your thoughts and feelings during those final days?",
                        messages: [
                            Message(content: "As the tide of the war turned against you, you retreated to your bunker in Berlin. What were your thoughts and feelings during those final days?", messageType: .Me),
                            Message(content: "In those final days, I was filled with despair and bitterness. I had believed that Germany was destined for greatness, and to see our nation on the brink of defeat was devastating. I felt betrayed by those who had failed to execute my plans effectively and by the German people for not having the will to endure the hardships of war. In my final moments, I resolved to take responsibility for my actions and chose to end my life rather than face the consequences of my actions.", messageType: .Sender)
                        ]
                    ),
                 ],
                 sources: ["wikipedia.org/wiki/Adolf_Hitler", "theholocaustexplained.org/the-nazi-rise-to-power/the-early-years-of-the-nazi-party/what-were-hitlers-ideas/", "history.com/topics/world-war-ii/adolf-hitler-1"], imageName: "AdolfHitler"
                ),Person(name: "Heinrich Himmler",
                         messageGroups: [
                            MessageGroup(
                                prompt: "Can you tell me about your upbringing and how it influenced your life?",
                                messages: [
                                    Message(content: "Can you tell me about your upbringing and how it influenced your life?", messageType: .Me),
                                    Message(content: "I was born in Munich on October 7, 1900, into a middle-class, conservative Catholic family. My father, Gebhard, was a teacher at the Ludwig academic high school in Munich. In 1913, we moved to Landshut after my father took the job of assistant principal of the Gymnasium there. As a youth, I was fervently patriotic and, during World War I, I dreamed of serving on the front as an officer. However, the war ended before my training was complete.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "After the war, you turned to agriculture and became deeply involved in the völkisch nationalist movement. Can you tell me more about that period in your life?",
                                messages: [
                                    Message(content: "After the war, you turned to agriculture and became deeply involved in the völkisch nationalist movement. Can you tell me more about that period in your life?", messageType: .Me),
                                    Message(content: "Yes, the Versailles peace treaty dashed my hopes of joining the army, so I studied agriculture at the Technical University in Munich. There, I joined a German-nationalist student fraternity and began to read deeply in the racist-nationalist literature. By the time I received my university degree in August 1922, I was a fanatical völkisch nationalist and a political activist.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "Your rise in the Nazi party was quite significant. Can you explain how you became the Reichsführer SS and how the SS evolved under your leadership?",
                                messages: [
                                    Message(content: "Your rise in the Nazi party was quite significant. Can you explain how you became the Reichsführer SS and how the SS evolved under your leadership?", messageType: .Me),
                                    Message(content: "In January 1929, Adolf Hitler appointed me Reichsführer SS. Initially, the SS was a small organisation subordinate to the SA. I saw an opportunity to develop it into an elite corps of the Nazi Party. By the time the Nazis seized power in January 1933, the SS numbered more than 52,000. I introduced key functions relating to internal security and guardianship over racial purity.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "Your control over the German police forces and the concentration camp system made you a powerful figure in Nazi Germany. Can you discuss the centralisation of these institutions under your command?",
                                messages: [
                                    Message(content: "Your control over the German police forces and the concentration camp system made you a powerful figure in Nazi Germany. Can you discuss the centralisation of these institutions under your command?", messageType: .Me),
                                    Message(content: "I built a strong position for the SS by taking control of the German police forces. By late 1934, I had centralised state political police departments within the Gestapo. Additionally, I secured control over a centralised concentration camp system, which was authorised by Hitler. The system grew during the war to include numerous main camps and sub camps, with millions of prisoners killed within these camps.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "You held immense power during World War II, with your authority extending to security and settlement operations in the occupied Soviet Union. Can you explain the reasoning behind your actions in these areas?",
                                messages: [
                                    Message(content: "You held immense power during World War II, with your authority extending to security and settlement operations in the occupied Soviet Union. Can you explain the reasoning behind your actions in these areas?", messageType: .Me),
                                    Message(content: "Our struggle was against what we perceived as the eternal enemies of Germany – Jewish capital, Marxism, liberal democracy, and the Slavic peoples. In my role overseeing security and settlement operations, I sought to further the goals of the Nazi Party in expanding Germany and protecting its racial purity.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "As the war progressed, your power continued to grow, even encroaching on the authority of the German armed forces. Can you discuss the development of the Waffen SS and your command structure?",
                                messages: [
                                    Message(content: "As the war progressed, your power continued to grow, even encroaching on the authority of the German armed forces. Can you discuss the development of the Waffen SS and your command structure?", messageType: .Me),
                                    Message(content: "To strengthen the position of the SS, I persuaded Hitler to permit the establishment of an armed SS force, known as the Waffen SS. It eventually fielded more than 20 divisions and half a million men. I also established a separate SS disciplinary system. As military defeats tarnished the prestige of the generals, my SS encroached on the authority of the German armed forces, even taking control of the Armed Forces Intelligence Service in February 1944. After the failed military putsch of July 20, 1944, Hitler appointed me Commander of the Replacement Army and gave me command of matters relating to prisoners of war. In December 1944, I was appointed commander-in-chief of Army Group Upper Rhine in southwestern Germany.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "Despite your power, you were not all-powerful within the Third Reich. Can you discuss your rivalry with Martin Bormann and your relationship with Albert Speer?",
                                messages: [
                                    Message(content: "Despite your power, you were not all-powerful within the Third Reich. Can you discuss your rivalry with Martin Bormann and your relationship with Albert Speer?", messageType: .Me),
                                    Message(content: "That's correct. My most significant rival during the last year of the war was Martin Bormann, Hitler's Secretary and chief of the Nazi Party Chancellery. The Nazi Party apparatus, led by the Gauleiters, became more significant with the invasion of the Allied armies. Albert Speer, the Reich Minister of Armaments and War Production, also wielded great power in the last years of the war, despite his postwar claims of powerlessness vis-à-vis the SS.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "As the end of the war approached, you attempted to negotiate a separate peace with the western Allies. Can you discuss your motivations and the outcomes of these efforts?",
                                messages: [
                                    Message(content: "As the end of the war approached, you attempted to negotiate a separate peace with the western Allies. Can you discuss your motivations and the outcomes of these efforts?", messageType: .Me),
                                    Message(content: "In the winter of 1944-1945, I considered using concentration camp prisoners as a bargaining chip to initiate negotiations. I met with Hilel Storch, a representative of the World Jewish Congress, and CountFolke Bernadotte, Vice President of the Swedish Red Cross, to discuss openings for negotiations. However, the Allies would not negotiate with me due to my involvement in Nazi crimes, and I couldn't fully separate myself from Hitler or the belief that the Germans would somehow win the war. My efforts ultimately failed.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "In the final days of the war, you were captured by Russian soldiers and eventually turned over to the British. Can you tell me about your capture and the circumstances surrounding your death?",
                                messages: [
                                    Message(content: "In the final days of the war, you were captured by Russian soldiers and eventually turned over to the British. Can you tell me about your capture and the circumstances surrounding your death?", messageType: .Me),
                                    Message(content: "At the end of the war, I disguised myself in a Secret Field Police uniform under the name Heinrich Hitzinger. I was captured on May 20, 1945, and later confessed my identity to the British. On May 23, 1945, while undergoing a body search, I killed myself by biting down on a cyanide capsule hidden in my mouth.", messageType: .Sender)
                                ]
                            )
                         ] ,sources: ["encyclopedia.ushmm.org/content/en/article/heinrich-himmler"],
                         imageName: "HeinrichHimmler"
                        ),Person(
                            name: "Premsl Dobias",
                            messageGroups: [
                                MessageGroup(
                                    prompt: "You were taken out of the railway station in Linz and lined up on the platform. Can you tell me more about what happened during that time?",
                                    messages: [
                                        Message(content: "You were taken out of the railway station in Linz and lined up on the platform. Can you tell me more about what happened during that time?", messageType: .Me),
                                        Message(content: "When we arrived at the railway station, we were cuffed together, in pairs, and then taken out and lined up on the platform. Most of the people there were women waiting for trains, and one of them came closer and asked one of the armed officers who was guarding us who we were. The officer replied in German, 'Das sind die Feinde unseres Fuhrers,' which means 'These are the enemies of our Fuhrer.' The woman then spat on us, and others joined in, spitting on us and shouting abuse.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "Can you tell me about the SS's request for prisoners who knew how to feed pigs and what happened afterwards?",
                                    messages: [
                                        Message(content: "Can you tell me about the SS's request for prisoners who knew how to feed pigs and what happened afterwards?", messageType: .Me),
                                        Message(content: "It was a very difficult and humiliating experience. The SS asked for prisoners who knew how to feed pigs and would come every day from the camp to work on a farm. I wanted to volunteer for this work because I was hoping to get away from the hard labor in the camp and to be able to eat with the pigs. The SS guard selected about 20 prisoners, and when he got to me, he pushed me back and kicked me, leaving a mark on my leg. He eventually selected about a dozen to fifteen prisoners and told them to walk to the farm. The rest of us were left behind, and we watched with envy as they walked away. Suddenly, we heard machine-gun shooting from two sides, and with horror, we noticed that all the prisoners who were marching to that farm were gunned down dead.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "Do you have any thoughts on how a civilised nation like Germany could have been fooled by Hitler?",
                                    messages: [
                                        Message(content: "Do you have any thoughts on how a civilised nation like Germany could have been fooled by Hitler?", messageType: .Me),
                                        Message(content: "I can never understand how a nation that gave the world musicians, poets, and experts in every field of science could have been fooled by a maniac like Hitler. It is something that will haunt me all my life.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "Can you tell me more about your experiences in the concentration camp?",
                                    messages: [
                                        Message(content: "Can you tell us more about your experiences in the concentration camp?", messageType: .Me),
                                        Message(content: "I was first sent to a concentration camp in Czechoslovakia before being transferred to Auschwitz. In the camps, we were forced to do hard labor for many hours a day. We were given very little food and were constantly hungry. The conditions were inhumane, and many of us were sick and weak. We witnessed terrible acts of violence and cruelty, and many of our fellow prisoners were killed or died due to the harsh conditions. It was a constant struggle for survival.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "Can you tell me how you were eventually liberated from the camp?",
                                    messages: [
                                        Message(content: "Can you tell me how you were eventually liberated from the camp?", messageType: .Me),
                                        Message(content: "I was finally liberated by the Russian army in 1945. It was a very emotional moment, and I will never forget the feeling of relief and hope that we felt at the time. However, the trauma and memories of what we endured during those years in the concentration camp will always stay with me.", messageType: .Sender)
                                    ]
                                )
                            ],
                            sources: ["iwm.org.uk/history/concentration-camp-survivors-share-their-stories"],
                            imageName: "PremyslDobias"
                        ),Person(name: "Johan Van Hulst", messageGroups: [
                            MessageGroup(
                                prompt: "Can you tell me about your early life and how you became the director of the Reformed Teacher Training College in Amsterdam?",
                                messages: [
                                    Message(content: "Can you tell me about your early life and how you became the director of the Reformed Teacher Training College in Amsterdam?", messageType: .Me),
                                    Message(content: "I was born in Amsterdam in 1911 and studied psychology and pedagogy (how to teach) at the Vrije Universiteit. I worked as a teacher and mentor in various cities before eventually becoming the director of the Reformed Teacher Training College in 1942.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "The rescue operation you were involved in during World War II saved hundreds of Jewish children. How did you first become involved in this operation?",
                                messages: [
                                    Message(content: "The rescue operation you were involved in during World War II saved hundreds of Jewish children. How did you first become involved in this operation?", messageType: .Me),
                                    Message(content: "When the Nazis started deporting Jews from the Hollandsche Schouwburg theatre, I became aware of the situation through my friendship with Henriëtte Pimentel, who ran the créche next door. Together with Walter Süskind and other volunteers, we devised a plan to rescue as many children as we could by secretly moving them from the créche to the college I directed.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "Can you describe the process of moving the children from the créche to the college and then getting them to safety?",
                                messages: [
                                    Message(content: "Can you describe the process of moving the children from the créche to the college and then getting them to safety?", messageType: .Me),
                                    Message(content: "The children were moved over the hedge separating the back yards of the créche and the college, often with the help of teachers-in-training or local university students. Once we had the children at the college, they were hidden in baskets and sacks. We waited for a tram to pass, blocking the view of the Nazi guards, and then our helpers would cycle away with the hidden child.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "How did you manage to keep this operation a secret from the Nazi authorities?",
                                messages: [
                                    Message(content: "How did you manage to keep this operation a secret from the Nazi authorities?", messageType: .Me),
                                    Message(content: "We relied on careful planning, discretion, and the bravery of many volunteers. We were fortunate that the Nazis didn't suspect anything, and the passing trams provided the perfect cover. The entire operation was built on trust, and everyone involved knew the stakes were incredibly high.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "You’ve mentioned the difficult decision of choosing which children to rescue. How did you cope with the emotional toll of making such decisions?",
                                messages: [
                                    Message(content: "You’ve mentioned the difficult decision of choosing which children to rescue. How did you cope with the emotional toll of making such decisions?", messageType: .Me),
                                    Message(content: "It was the most difficult part of my life. Knowing that the children left behind would face certain death was heartbreaking. We tried to save as many as we could, but the choices we had to make still haunt me.", messageType: .Sender)]
                            ),
                            MessageGroup(
                                prompt: "In your political career, you served as a Member of the Dutch Senate and the European Parliament, as well as Party chair of the CHU. How did your experiences during World War II influence your political views and actions?",
                                messages: [
                                    Message(content: "In your political career, you served as a Member of the Dutch Senate and the European Parliament, as well as Party chair of the CHU. How did your experiences during World War II influence your political views and actions?", messageType: .Me),
                                    Message(content: "My experiences during the war taught me the importance of standing up for what is right and defending the vulnerable. As a politician, I tried to advocate for social justice, human rights, and the protection of minority groups. The lessons I learned during the war shaped my political convictions and my commitment to serving the people.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "You were an emeritus professor of Pedagogy and a highly prolific author. How did your wartime experiences and your work in education intersect?",
                                messages: [
                                    Message(content: "You were an emeritus professor of Pedagogy and a highly prolific author. How did your wartime experiences and your work in education intersect?", messageType: .Me),
                                    Message(content: "The war demonstrated the significance of education, not only in terms of academic knowledge but also in fostering empathy, understanding, and moral responsibility. As an educator and author, I tried to instil these values in my students and readers, hoping to create a better, more compassionate society.", messageType: .Sender)
                                ]
                            ),
                            MessageGroup(
                                prompt: "Lastly, looking back on your life, what message would you like to share with future generations about your experiences during World War II and the importance of standing up against injustice?",
                                messages: [
                                    Message(content: "Lastly, looking back on your life, what message would you like to share with future generations about your experiences during World War II and the importance of standing up against injustice?", messageType: .Me),
                                    Message(content: "I would like future generations to understand that every individual has the power to make a difference. In the face of injustice, it's crucial to stand up and do whatever you can to help others. Even the smallest acts of kindness and bravery can change lives and create a lasting impact.", messageType: .Sender)
                                ]
                            )
                        ], sources: ["https://www.jewishvirtuallibrary.org/johan-van-hulst"], imageName: "JohanVanHulst"),Person(
                            name: "Virginia Hall",
                            messageGroups: [
                                MessageGroup(
                                    prompt: "could you tell us a little more about your early life and what led you to become a spy?",
                                    messages: [
                                        Message(content: "could you tell us a little more about your early life and what led you to become a spy?", messageType: .Me),
                                        Message(content: "I was born into a wealthy Baltimore family, and they had certain expectations for me, such as marrying into our privileged circle. However, I had a strong desire for adventure and a passion for experiencing other cultures. I attended Radcliffe and Barnard colleges briefly before deciding to study in Paris. I fell in love with France and became determined to become a diplomat.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "We know that you faced several setbacks in your pursuit of a diplomatic career. How did these challenges affect you, and how did you ultimately end up working for British intelligence during World War II?",
                                    messages: [
                                        Message(content: "We know that you faced several setbacks in your pursuit of a diplomatic career. How did these challenges affect you, and how did you ultimately end up working for British intelligence during World War II?", messageType: .Me),
                                        Message(content: "It was a difficult journey. I applied several times to the State Department, but my applications were consistently rejected, as women made up only a small fraction of U.S. diplomats at the time. I did manage to secure a clerical job at a U.S. consulate in Turkey, but a hunting accident resulted in the amputation of my left leg below the knee. This led to a long recovery and the need to use a wooden prosthetic leg. When World War II broke out and Nazi Germany invaded France, I volunteered to drive an ambulance for the French. After France was overrun, I fled to Britain, where a chance meeting with a spy connected me to British intelligence.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "As a female spy, you faced unique challenges during your time in Nazi-occupied France. How did you use this to your advantage?",
                                    messages: [
                                        Message(content: "As a female spy, you faced unique challenges during your time in Nazi-occupied France. How did you use this to your advantage?", messageType: .Me),
                                        Message(content: "Being a woman allowed me to be somewhat invisible to the enemy. The chauvinism of the Gestapo at the time made them underestimate the capabilities of a woman, which I used to my advantage. This, combined with my ability to change my appearance and utilise various personas, helped me remain undetected.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "Your work in France involved coordinating with the French resistance. Can you share more about the relationships you built during this time and how they contributed to your success?",
                                    messages: [
                                        Message(content: "Your work in France involved coordinating with the French resistance. Can you share more about the relationships you built during this time and how they contributed to your success?", messageType: .Me),
                                        Message(content: "Establishing and maintaining relationships with locals was crucial to my success. I stayed at a convent initially and persuaded the nuns to aid me. I also befriended a brothel owner who provided valuable information gathered by her prostitutes from German soldiers. These connections and others allowed me to build an extensive network of over 1,500 people, which played a significant role in sabotaging the enemy and reclaiming villages before the arrival of Allied troops.", messageType: .Sender)
                                    ]
                                ),
                                MessageGroup(
                                    prompt: "Your story has recently gained more attention with the release of several books and upcoming movies. How do you feel about your experiences being shared with a wider audience?",
                                    messages: [
                                        Message(content: "Your story has recently gained more attention with the release of several books and upcoming movies. How do you feel about your experiences being shared with a wider audience?", messageType: .Me),
                                        Message(content: "I'm humbled that people find my story worth sharing, and I hope it inspires others to persevere in the face of adversity. My primary motivation has always been to serve my country, and if my story can encourage others to do the same or to pursue their passions despite the odds, then I am grateful.", messageType: .Sender)
                                    ]
                                )
                            ],
                            sources: [
                                "npr.org/2019/04/18/711356336/a-woman-of-no-importance-finally-gets-her-due"
                            ],
                            imageName: "VirginiaHall"
                        )
        
    ]
    var body: some View {
        NavigationView {
            List(people) { person in
                NavigationLink(destination: PersonDetailView(person: person)) {
                    HStack {
                        Image(person.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding(.trailing, 8)
                        
                        Text(person.name)
                    }
                }
            }
            .navigationTitle("Chats")
        }
    }
}
