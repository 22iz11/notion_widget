function dispalyGreetings(today){
        hrs = today.getHours();
        name="NiNi"
        if (hrs < 12)
            greet = 'Good Morning  '+name;
        else if (hrs >= 12 && hrs <= 17)
            greet = 'Good Afternoon '+name;
        else if (hrs >= 17 && hrs <= 24)
            greet = 'Good Evening  '+name;
        document.getElementById('greet').innerHTML = greet;

    }
