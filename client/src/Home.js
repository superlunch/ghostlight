import React from "react";
import Carousel from "react-bootstrap/Carousel";
import { useState } from "react";
import Register from "./Register";
import Login from "./Login";

function Home() {
  const [regLogin, setRegLogin] = useState(true);

  const toggleRegLogin = () => {
    setRegLogin((current) => !current);
  };

  return (
    <div className="landing-cont">
      <div className="landing-left">
        <div className="blurb">
          Your most-used stage management tools, <br /> all in one place.
        </div>
        <div>
          {regLogin ? (
            <div>
              <Register />
              <div className="p-container">
                Have an account?
                <p className="home-toggle-link" onClick={toggleRegLogin}>
                  Login
                </p>
              </div>
            </div>
          ) : (
            <div>
              <Login />
              <div className="p-container">
                Need to sign up?
                <p className="home-toggle-link" onClick={toggleRegLogin}>
                  Register
                </p>
              </div>
            </div>
          )}
        </div>
      </div>
      <div className="landing-right">
        {/* <div className="carousel"> */}
        <div>
          <Carousel>
            <Carousel.Item>
              <img
                src="https://news.aut.ac.nz/__data/assets/image/0006/92328/placeholder-image10.jpg"
                alt="First slide"
              />
              <Carousel.Caption>
                <h3>First slide label</h3>
                <p>
                  Nulla vitae elit libero, a pharetra augue mollis interdum.
                </p>
              </Carousel.Caption>
            </Carousel.Item>
            <Carousel.Item>
              <img
                src="https://news.aut.ac.nz/__data/assets/image/0006/92328/placeholder-image10.jpg"
                alt="Second slide"
              />

              <Carousel.Caption>
                <h3>Second slide label</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </Carousel.Caption>
            </Carousel.Item>
            <Carousel.Item>
              <img
                src="https://news.aut.ac.nz/__data/assets/image/0006/92328/placeholder-image10.jpg"
                alt="Third slide"
              />

              <Carousel.Caption>
                <h3>Third slide label</h3>
                <p>
                  Praesent commodo cursus magna, vel scelerisque nisl
                  consectetur.
                </p>
              </Carousel.Caption>
            </Carousel.Item>
          </Carousel>
        </div>
      </div>
    </div>
  );
}

export default Home;
