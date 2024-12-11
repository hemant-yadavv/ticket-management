const mongoose = require('mongoose');

require('dotenv').config();

const dbConnect = async () => {
    try {
        await mongoose.connect(process.env.MONGO_URI || `mongodb+srv://hemant:hemantpe@cluster0.43iaz.mongodb.net/ticketManagement?retryWrites=true&w=majority`);
        console.log('MongoDB connected');
    } catch (error) {
        console.error(error.message);
        process.exit(1);
    }
};

module.exports = dbConnect;