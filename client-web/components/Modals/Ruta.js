import React from "react";
import {
  Button,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Image,
} from "@nextui-org/react";

function Ruta({ datos, isOpen, onOpenChange }) {
  // console.log(datos);

  const normalizarUrl = (url) => {
    return url.replace(/\/[a-z]{2}\/view\//, "/view/");
  };

  const ruta = normalizarUrl(datos.toString());

  return (
    <>
      <Modal
        isOpen={isOpen}
        onOpenChange={onOpenChange}
        placement="center"
        size="5xl"
        scrollBehavior="outside"
      >
        <ModalContent>
          {(onClose) => (
            <>
              {datos && (
                <>
                  <ModalHeader>Ruta</ModalHeader>
                  <ModalBody>
                    <div className="relative pb-[56.5%] h-0 overflow-hidden rounded-lg shadow-lg">
                      <iframe
                        title="Ruta del evento"
                        className="absolute top-0 left-0 w-full h-[120%]" // Ajusta la altura para ocultar la parte inferior
                        src={`https://cdn.embedly.com/widgets/media.html?src=${ruta}/widget?r=embed-site&url=${ruta}?r=embed-site&image=${ruta}/png?x-ref=embed-site&key=f1631a41cb254ca5b035dc5747a5bd75&type=text/html&schema=relive`}
                        frameBorder="0"
                        allowFullScreen
                        scrolling="no"
                      ></iframe>
                    </div>
                  </ModalBody>
                  <ModalFooter>
                    <Button color="primary" onPress={onClose}>
                      Cerrar
                    </Button>
                  </ModalFooter>
                </>
              )}
            </>
          )}
        </ModalContent>
      </Modal>
    </>
  );
}

export default Ruta;