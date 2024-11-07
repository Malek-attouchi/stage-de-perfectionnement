const typebotInitScript = document.createElement("script");
typebotInitScript.type = "module";
typebotInitScript.innerHTML = `import Typebot from 'https://cdn.jsdelivr.net/npm/@typebot.io/js@0.2.7/dist/web.js'

Typebot.initBubble({
  typebot: "my-typebot-ohj1gk6",
  apiHost: "https://viewer.chatbuilder.geoprod.com",
  theme: {
    button: { backgroundColor: "#0042DA", iconColor: "#FFFFFF" },
    previewMessage: { backgroundColor: "white", textColor: "black" },
  },
});
`;
document.body.append(typebotInitScript);